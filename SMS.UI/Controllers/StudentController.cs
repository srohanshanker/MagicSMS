using SMS.BusinessEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using System.Threading.Tasks;
using System.Configuration;

namespace SMS.UI.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Index()
        {
            IEnumerable<StudentViewModel> students = null;
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ConfigurationManager.AppSettings["APIBaseURL"].ToString());
                //HTTP GET
                var responseTask = client.PostAsync("GetAllStudents", null);
                responseTask.Wait();

                var result = responseTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<IList<StudentViewModel>>();
                    readTask.Wait();
                    students = readTask.Result;
                }
                else //web api sent error response 
                {
                    students = Enumerable.Empty<StudentViewModel>();

                    ModelState.AddModelError(string.Empty, "Server error. Please contact administrator.");
                }
            }
            return View(students);
        }
    }
}
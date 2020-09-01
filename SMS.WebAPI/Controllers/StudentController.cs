using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using SMS.BusinessEntity;
using SMS.BusinessService.Interface;
using SMS.BusinessService.Service;
using SMS.DAL;

namespace SMS.WebAPI.Controllers
{
    public class StudentController : ApiController
    {
        readonly IStudentService _studentService;
        public StudentController(IStudentService studentService)
        {
            _studentService = studentService;
        }

        [HttpPost]
        [Route("api/student/GetAllStudents")]
        public List<StudentViewModel> GetAllStudents()
        {
            return _studentService.GetAllStudents();
        }
        [HttpPost]
        [Route("api/student/GetAllStudents/{districtid}")]
        public List<Student> GetAllStudents(int districtid)
        {
            return _studentService.GetAllStudents(districtid);
        }
        [HttpPost]
        [Route("GetAllStudentEnrollments")]
        public List<Enrollment> GetAllStudentEnrollments(int studentId, string schoolYear)
        {
            return _studentService.GetAllStudentEnrollments(studentId, schoolYear);
        }
        [HttpPost]
        [Route("GetAllStudentServices")]
        public List<Service> GetAllStudentServices(int studentId, string schoolYear)
        {
            return _studentService.GetAllStudentServices(studentId, schoolYear);
        }
    }
}

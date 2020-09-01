using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SMS.BusinessEntity;
using SMS.DAL;

namespace SMS.BusinessService.Interface
{
    public interface IStudentService
    {
        List<StudentViewModel> GetAllStudents();
        List<Student> GetAllStudents(int districtId);
        List<Enrollment> GetAllStudentEnrollments(int studentId, string schoolYear);
        List<DAL.Service> GetAllStudentServices(int studentId, string schoolYear);
    }
}

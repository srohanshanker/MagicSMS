using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SMS.BusinessEntity;
using SMS.DAL;
using SMS.BusinessService.Interface;

namespace SMS.BusinessService.Service
{
    public class StudentService : IStudentService
    {
        readonly MagicSMDBEntities magicswDBEntities = new MagicSMDBEntities();
        
        public List<Enrollment> GetAllStudentEnrollments(int studentId, string schoolYear)
        {
            return magicswDBEntities.Enrollments.Where(x => (studentId == 0 || x.StudentId == studentId) && (string.IsNullOrEmpty(schoolYear) || x.SchoolYear == schoolYear)).ToList();
        }

        public List<StudentViewModel> GetAllStudents()
        {
            return magicswDBEntities.Students.Join(magicswDBEntities.Services, x => x.StudentId,
                                                                              y => y.StudentId, (x, y) => new { stu = x, svc = y })
                                            .Join(magicswDBEntities.Districts, x => x.stu.DistrictId, y => y.Id, (x, y) => new { stu = x.stu, svc = x.svc, dist = y })
                .Select(x => new StudentViewModel
                {
                    StudentId = x.stu.StudentId,
                    FirstName = x.stu.FirstName,
                    LastName = x.stu.LastName,
                    DateOfBirth = x.stu.DOB,
                    District = x.dist.Desc,
                    SSN = x.stu.SSN,
                    ServiceName = x.svc.ServiceName,
                    SchoolYear = x.svc.SchoolYear
                }).ToList();
        }

        public List<Student> GetAllStudents(int districtId)
        {
            return magicswDBEntities.Students.Where(x => x.DistrictId == districtId).ToList();
        }

        public List<DAL.Service> GetAllStudentServices(int studentId, string schoolYear)
        {
            return magicswDBEntities.Services.Where(x => (studentId == 0 || x.StudentId == studentId) && (string.IsNullOrEmpty(schoolYear) || x.SchoolYear == schoolYear)).ToList();
        }
    }
}

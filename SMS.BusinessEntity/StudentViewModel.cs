using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BusinessEntity
{
    public class StudentViewModel
    {
        public int StudentId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        [DisplayFormat(DataFormatString = "{0:MM/dd/yyyy}")]
        public Nullable<System.DateTime> DateOfBirth { get; set; }
        public string SSN { get; set; }
        public string District { get; set; }
        public string ServiceName { get; set; }
        public string SchoolYear { get; set; }
    }
}

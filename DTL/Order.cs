using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PRN292_Project.DTL
{
    public class Order
    {
        public int ID { get; set; }
        public DateTime OrderDate { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public string Province { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public float Total { get; set; }
        public bool IsApproved { get; set; }
        public bool IsProcessing { get; set; }
        public bool IsCompleted { get; set; }
        public List<OrderDetail> OrderDetails = new List<OrderDetail>();
    }
}
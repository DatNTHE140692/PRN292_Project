using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PRN292_Project.DTL
{
    public class OrderDetail
    {
        public int ID { get; set; }
        public Order Order { get; set; }
        public Product Product { get; set; }
    }
}
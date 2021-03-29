using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class OrderDetailDAO
    {
        public static bool Insert(OrderDetail od)
        {
            SqlCommand cmd = new SqlCommand(@"INSERT INTO dbo.OrderDetails(oid, pid, unitPrice, quantity) " +
                                            "VALUES (@oid, @pid, @unit, @q)");
            cmd.Parameters.AddWithValue("@oid", od.Order.ID);
            cmd.Parameters.AddWithValue("@pid", od.Product.Id);
            cmd.Parameters.AddWithValue("@unit", od.Product.Price);
            cmd.Parameters.AddWithValue("@q", od.Product.Quantity);
            return DAO.UpdateTable(cmd);
        }
    }
}
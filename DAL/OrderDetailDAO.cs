using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class OrderDetailDAO
    {
        public static DataTable GeDataTable()
        {
            return DAO.GetDataTable("SELECT * FROM dbo.OrderDetails");
        }

        public static DataTable GeDataTable(Order o)
        {
            SqlCommand cmd = new SqlCommand(
                @"SELECT od.id [ID], p.name [Product], p.price [Price], od.quantity [Quantity], s.name [Shipment] " +
                "FROM dbo.OrderDetails od INNER JOIN dbo.Products p ON p.id = od.pid INNER JOIN dbo.Orders o ON o.id = od.oid INNER JOIN dbo.Shipment s ON s.id = o.shipid " +
                "WHERE od.oid = @id");
            cmd.Parameters.AddWithValue("@id", o.ID);
            return DAO.GetDataTable(cmd);
        }

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

        public static bool Delete(Order o)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM dbo.OrderDetails WHERE oid = @id");
            cmd.Parameters.AddWithValue("@id", o.ID);
            return DAO.UpdateTable(cmd);
        }
    }
}
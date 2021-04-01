using System;
using System.Data;
using System.Data.SqlClient;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class OrderDAO
    {
        public static int GetMaxID()
        {
            SqlConnection conn = new SqlConnection(DAO.strConn);
            SqlCommand cmd = new SqlCommand("SELECT MAX(id) id FROM dbo.Orders", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                if (reader.Read())
                {
                    return int.Parse(reader["id"].ToString());
                }
            }
            conn.Close();
            return -1;
        }

        public static DataTable GetDataTable()
        {
            return DAO.GetDataTable(@"SELECT * FROM dbo.Orders ORDER BY id DESC");
        }

        public static bool Update(Order o)
        {
            SqlCommand cmd = new SqlCommand(@"UPDATE dbo.Orders SET isApproved = @isApproved, isProcessing = @isProcessing, isCompleted = @isCompleted WHERE id = @id");
            cmd.Parameters.AddWithValue("@isApproved", o.IsApproved);
            cmd.Parameters.AddWithValue("@isProcessing", o.IsProcessing);
            cmd.Parameters.AddWithValue("@isCompleted", o.IsCompleted);
            cmd.Parameters.AddWithValue("@id", o.ID);
            return DAO.UpdateTable(cmd);
        }

        public static bool Delete(Order o)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM dbo.Orders WHERE id = @id");
            cmd.Parameters.AddWithValue("@id", o.ID);
            return OrderDetailDAO.Delete(o) && DAO.UpdateTable(cmd);
        }

        public static bool Insert(Order o)
        {
            string sql = @"INSERT INTO dbo.Orders (orderDate, firstName, lastName, email, phoneNumber, [address], province, city, country, total, isApproved, isProcessing, isCompleted, shipid) " +
                         "VALUES (@orderDate, @firstName, @lastName, @email, @phoneNumber, @address, @province, @city, @country, @total, @isApproved, @isProcessing, @isCompleted, @shipid)";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.AddWithValue("@orderDate", o.OrderDate);
            cmd.Parameters.AddWithValue("@firstName", o.FirstName);
            cmd.Parameters.AddWithValue("@lastName", o.LastName);
            cmd.Parameters.AddWithValue("@email", o.Email);
            cmd.Parameters.AddWithValue("@phoneNumber", o.PhoneNumber);
            cmd.Parameters.AddWithValue("@address", o.Address);
            cmd.Parameters.AddWithValue("@province", o.Province);
            cmd.Parameters.AddWithValue("@city", o.City);
            cmd.Parameters.AddWithValue("@country", o.Country);
            cmd.Parameters.AddWithValue("@total", o.Total);
            cmd.Parameters.AddWithValue("@isApproved", false);
            cmd.Parameters.AddWithValue("@isProcessing", false);
            cmd.Parameters.AddWithValue("@isCompleted", false);
            cmd.Parameters.AddWithValue("@shipid", o.Shipment.ID);
            return DAO.UpdateTable(cmd);
        }
    }
}
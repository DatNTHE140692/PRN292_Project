﻿using System;
using System.Data;
using System.Data.SqlClient;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class OrderDAO
    {
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
            string sql = @"INSERT INTO dbo.Orders(orderDate, firstName, lastName, email, phoneNumber, [address], province, city, country, total, isApproved, isProcessing, isCompleted) " +
                         "VALUES (@d, @f, @l, @e, @p, @a, @province, @city, @country, @t, @isAccept)";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.AddWithValue("@d", o.OrderDate);
            cmd.Parameters.AddWithValue("@f", o.FirstName);
            cmd.Parameters.AddWithValue("@l", o.LastName);
            cmd.Parameters.AddWithValue("@e", o.Email);
            cmd.Parameters.AddWithValue("@p", o.PhoneNumber);
            cmd.Parameters.AddWithValue("@a", o.Address);
            cmd.Parameters.AddWithValue("@province", o.Address);
            cmd.Parameters.AddWithValue("@city", o.City);
            cmd.Parameters.AddWithValue("@country", o.Country);
            cmd.Parameters.AddWithValue("@t", o.Total);
            cmd.Parameters.AddWithValue("@isApproved", false);
            cmd.Parameters.AddWithValue("@isProcessing", false);
            cmd.Parameters.AddWithValue("@isCompleted", false);
            return DAO.UpdateTable(cmd);
        }
    }
}
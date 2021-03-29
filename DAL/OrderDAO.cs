﻿using System.Data.SqlClient;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class OrderDAO
    {
        public static bool Insert(Order o)
        {
            string sql = @"INSERT INTO dbo.Orders(orderDate, firstName, lastName, email, phoneNumber, [address], province, city, country, total, isAccept) " +
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
            cmd.Parameters.AddWithValue("@isAccept", o.IsAccept);
            return DAO.UpdateTable(cmd);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class AdminDAO
    {
        public static Admin GetAdmin(string userName, string password)
        {
            try
            {
                SqlCommand cmd =
                    new SqlCommand("SELECT * FROM dbo.[Admin] WHERE userName = @username AND [password] = @password");
                cmd.Parameters.AddWithValue("@username", userName);
                cmd.Parameters.AddWithValue("@password", password);
                DataTable dt = DAO.GetDataTable(cmd);
                if (dt == null || dt.Rows.Count == 0)
                {
                    throw new Exception();
                }
                DataRow row = dt.Rows[0];
                Admin admin = new Admin();
                admin.Id = int.Parse(row["id"].ToString());
                admin.UserName = row["userName"].ToString();
                admin.FirstName = row["firstName"].ToString();
                admin.LastName = row["lastName"].ToString();
                admin.Email = row["email"].ToString();
                admin.PhoneNumber = row["phoneNumber"].ToString();
                return admin;
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
using System.Data;
using System.Data.SqlClient;

namespace PRN292_Project.DAL
{
    public class ContactDAO
    {
        public static DataTable GetDataTable()
        {
            return DAO.GetDataTable("SELECT * FROM dbo.Contact");
        }

        public static bool Insert(Contact c)
        {
            SqlCommand cmd = new SqlCommand(@"INSERT INTO dbo.Contact(firstName, lastName, email, phoneNumber, title, content) " +
                                            "VALUES (@fname, @lname, @email, @phone, @title, @content)");
            cmd.Parameters.AddWithValue("@fname", c.FirstName);
            cmd.Parameters.AddWithValue("@lname", c.LastName);
            cmd.Parameters.AddWithValue("@email", c.Email);
            cmd.Parameters.AddWithValue("@phone", c.PhoneNumber);
            cmd.Parameters.AddWithValue("@title", c.Title);
            cmd.Parameters.AddWithValue("@content", c.Content);
            return DAO.UpdateTable(cmd);
        }
    }
}
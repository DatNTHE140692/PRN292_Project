using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class CategoryDAO
    {
        public static DataTable GetDataTable()
        {
            return DAO.GetDataTable("SELECT * FROM dbo.Product_Categories");
        }
        
        public static DataTable GetDataTableAll()
        {
            return DAO.GetDataTable("SELECT * FROM dbo.Product_Categories UNION SELECT -1, 'All'");
        }
        
        public static bool Insert(Category c)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.Product_Categories (name) VALUES(@name)");
            cmd.Parameters.AddWithValue("@name", c.Name);
            return DAO.UpdateTable(cmd);
        }

        public static bool Update(Category c)
        {
            SqlCommand cmd = new SqlCommand("UPDATE dbo.Product_Categories SET name = @name WHERE id = @id");
            cmd.Parameters.AddWithValue("@name", c.Name);
            cmd.Parameters.AddWithValue("@id", c.Id);
            return DAO.UpdateTable(cmd);
        }

        public static bool Delete(Category c)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM dbo.Product_Categories WHERE id = @id");
            cmd.Parameters.AddWithValue("@id", c.Id);
            return DAO.UpdateTable(cmd);
        }
    }
}
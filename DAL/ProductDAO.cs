using System;
using System.Data;
using System.Data.SqlClient;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class ProductDAO
    {
        public static Product GetProduct(int id)
        {
            Product p = null;
            SqlConnection conn = new SqlConnection(DAO.strConn);
            SqlCommand cmd = new SqlCommand(@"SELECT p.id, p.name, p.price, p.overview, p.[description], c.id [cateid], c.name [catename], ISNULL(i.imageUrl, 'Empty') imageUrl FROM dbo.Products p INNER JOIN dbo.Product_Categories c ON c.id = p.cid LEFT JOIN dbo.Product_Images i ON i.pid = p.id WHERE p.id = @id", conn);
            cmd.Parameters.AddWithValue("@id", id);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                p = new Product();
                while (reader.Read())
                {
                    p.Id = id;
                    p.Name = reader["name"].ToString();
                    p.Category = new Category();
                    p.Category.Id = int.Parse(reader["cateid"].ToString());
                    p.Category.Name = reader["catename"].ToString();
                }
            }
            reader.Close();
            conn.Close();
            return p;
        }

        public static DataTable GetTop4Latest()
        {
            return DAO.GetDataTable("SELECT TOP 4 * FROM dbo.Products WHERE inStock = 1 ORDER BY id DESC");
        }

        public static bool Delete(Product p)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM dbo.Products WHERE id = @id");
            cmd.Parameters.AddWithValue("@id", p.Id);
            return DAO.UpdateTable(cmd);
        }
    }
}
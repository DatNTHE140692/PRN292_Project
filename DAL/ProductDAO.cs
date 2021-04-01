using System;
using System.Collections.Generic;
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
            SqlCommand cmd = new SqlCommand(@"SELECT p.id, p.name, p.price, p.overview, p.[description], p.inStock, p.thumbnail, c.id [cateid], c.name [catename], ISNULL(i.imageUrl, 'Empty') imageUrl " +
                                            "FROM dbo.Products p INNER JOIN dbo.Product_Categories c ON c.id = p.cid LEFT JOIN dbo.Product_Images i ON i.pid = p.id " +
                                            "WHERE p.id = @id", conn);
            cmd.Parameters.AddWithValue("@id", id);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                p = new Product();
                p.Id = -1;
            }
            while (reader.HasRows)
            {
                while (reader.Read())
                {
                    int pid = int.Parse(reader["id"].ToString());
                    if (p.Id != pid)
                    {
                        p.Id = pid;
                        p.Name = reader["name"].ToString();
                        p.Category = new Category();
                        p.Category.Id = int.Parse(reader["cateid"].ToString());
                        p.Category.Name = reader["catename"].ToString();
                        p.IsInStock = bool.Parse(reader["inStock"].ToString());
                        p.Overview = reader["overview"].ToString();
                        p.Description = reader["description"].ToString();
                        p.Thumbnail = reader["thumbnail"].ToString();
                        p.Price = float.Parse(reader["price"].ToString());
                    }
                    string imgUrl = reader["imageUrl"].ToString();
                    if (!imgUrl.Equals("Empty"))
                    {
                        p.ImageUrls.Add(imgUrl);
                    }
                }

                return p;
            }
            reader.Close();
            conn.Close();
            return null;
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
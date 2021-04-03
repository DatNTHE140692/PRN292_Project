using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class ProductDAO
    {
        public static DataTable GetDataTable()
        {
            return DAO.GetDataTable("SELECT * FROM Products WHERE inStock = 1 ORDER BY id DESC");
        }

        public static DataTable GetDataTable(string key)
        {
            SqlCommand cmd = new SqlCommand(@"SELECT * " +
                                            "FROM dbo.Products WHERE inStock = 1 AND name LIKE '%' + @key + '%' OR overview LIKE '%' + @key + '%' OR [description] LIKE '%' + @key + '%' " +
                                            "ORDER BY id DESC");
            cmd.Parameters.AddWithValue("@key", key);
            return DAO.GetDataTable(cmd);
        }

        public static DataTable GetDataTable(Category c)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.Products WHERE cid = @id AND inStock = 1 ORDER BY id DESC");
            cmd.Parameters.AddWithValue("@id", c.Id);
            return DAO.GetDataTable(cmd);
        }

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

        public static bool Insert(int id, string url)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO dbo.Product_Images( pid, imageUrl ) VALUES (@id, @url)");
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@url", url);
            return DAO.UpdateTable(cmd);
        }

        public static bool Insert(Product p)
        {
            SqlCommand cmd =
                new SqlCommand(
                    @"INSERT INTO dbo.Products(name , price, overview, [description], inStock, cid, thumbnail) " +
                    "VALUES (@name , @price, @overview, @description, @inStock, @cid, @thumbnail)");
            cmd.Parameters.AddWithValue("@name", p.Name);
            cmd.Parameters.AddWithValue("@price", p.Price);
            cmd.Parameters.AddWithValue("@overview", p.Overview);
            cmd.Parameters.AddWithValue("@description", p.Description);
            cmd.Parameters.AddWithValue("@inStock", p.IsInStock);
            cmd.Parameters.AddWithValue("@cid", p.Category.Id);
            cmd.Parameters.AddWithValue("@thumbnail", p.Thumbnail);
            return DAO.UpdateTable(cmd);
        }

        public static int GetMaxID()
        {
            SqlConnection conn = new SqlConnection(DAO.strConn);
            SqlCommand cmd = new SqlCommand("SELECT MAX(id) id FROM dbo.Products", conn);
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

        public static bool Update(Product p)
        {
            SqlCommand cmd = new SqlCommand(@"UPDATE dbo.Products " +
                                            "SET name = @name, price = @price, overview = @overview, [description] = @description, inStock = @stock, cid = @category, thumbnail = @thumbnail " +
                                            "WHERE id = @id");
            cmd.Parameters.AddWithValue("@name", p.Name);
            cmd.Parameters.AddWithValue("@price", p.Price);
            cmd.Parameters.AddWithValue("@overview", p.Overview);
            cmd.Parameters.AddWithValue("@description", p.Description);
            cmd.Parameters.AddWithValue("@stock", p.IsInStock);
            cmd.Parameters.AddWithValue("@category", p.Category.Id);
            cmd.Parameters.AddWithValue("@thumbnail", p.Thumbnail);
            cmd.Parameters.AddWithValue("@id", p.Id);
            return DAO.UpdateTable(cmd);
        }

        public static bool Delete_Product_Images(int id)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM dbo.Product_Images WHERE pid = @id");
            cmd.Parameters.AddWithValue("@id", id);
            return DAO.UpdateTable(cmd);
        }
    }
}
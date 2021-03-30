using System.Data;
using System.Data.SqlClient;
using PRN292_Project.DTL;

namespace PRN292_Project.DAL
{
    public class ProductDAO
    {
        public static bool Delete(Product p)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM dbo.Products WHERE id = @id");
            cmd.Parameters.AddWithValue("@id", p.Id);
            return DAO.UpdateTable(cmd);
        }
    }
}
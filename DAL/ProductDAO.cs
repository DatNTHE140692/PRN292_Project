using System.Data;

namespace PRN292_Project.DAL
{
    public class ProductDAO
    {
        public static DataTable GetDataTable()
        {
            return DAO.GetDataTable("SELECT * FROM dbo.Products");
        }
    }
}
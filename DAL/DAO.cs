using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PRN292_Project.DAL
{
    public class DAO
    {
        public static string strConn = ConfigurationManager.ConnectionStrings["SQLServerString"].ConnectionString;

        static public DataTable GetDataTable(string sqlSelect)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strConn);
                SqlDataAdapter da = new SqlDataAdapter(sqlSelect, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception)
            {
                return null;
            }
        }

        static public DataTable GetDataTable(SqlCommand cmd)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strConn);
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception)
            {
                return null;
            }
        }

        static public bool UpdateTable(SqlCommand cmd)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strConn);
                cmd.Connection = conn;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;

            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return false;
            }

        }

    }
}

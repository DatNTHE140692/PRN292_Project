using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DAL;

namespace PRN292_Project.GUI
{
    public partial class SignInGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.Users WHERE userName LIKE @u AND [password] LIKE @p");
            cmd.Parameters.AddWithValue("@u", Login.UserName.Trim());
            cmd.Parameters.AddWithValue("@p", Login.Password.Trim());
            if (DAO.GetDataTable(cmd).Rows.Count != 0)
            {
                e.Authenticated = true;
            }
            else
            {
                e.Authenticated = false;
            }
        }
    }
}
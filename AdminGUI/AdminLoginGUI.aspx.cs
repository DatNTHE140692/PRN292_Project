using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System;
using System.Security.Cryptography;
using System.Text;

namespace PRN292_Project.AdminGUI
{
    public partial class AdminLoginGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtErrorMessage.Visible = false;
            }

            if (Session["Admin"] != null)
            {
                Response.Redirect("DashboardGUI.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Admin admin = AdminDAO.GetAdmin(txtUserName.Text.Trim(), MD5Hash(txtPassword.Text.Trim()));
            if (admin == null)
            {
                txtErrorMessage.Visible = true;
                return;
            }
            Session.Add("Admin", admin);
            Response.Redirect("DashboardGUI.aspx");
        }

        private string MD5Hash(string text)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(text));
            byte[] result = md5.Hash;
            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                strBuilder.Append(result[i].ToString("x2"));
            }
            return strBuilder.ToString();
        }

    }
}
using System;
using System.Collections.Generic;
using PRN292_Project.DTL;
using PRN292_Project.GUI;

namespace PRN292_Project
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keywords = txtSearch.Text.Trim();
            Response.Redirect("ShopGUI.aspx?keyword=" + keywords);
        }
    }
}
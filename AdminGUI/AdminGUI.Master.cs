using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PRN292_Project.GUI
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e) {}

        protected void btnLogout_OnClick(object sender, EventArgs e)
        {
            Session.Remove("Admin");
            Response.Redirect("AdminLoginGUI.aspx");
        }
    }
}
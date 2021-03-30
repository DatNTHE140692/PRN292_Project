using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DTL;

namespace PRN292_Project.AdminGUI
{
    public abstract partial class BaseAuthentication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                if (!IsPostBack)
                {
                    Label txtAdmin = (Label)Page.Master.FindControl("txtAdmin");
                    Button btnLogout = (Button)Page.Master.FindControl("btnLogout");
                    txtAdmin.Text += "<i class=\"fa fa-user-circle-o\" aria-hidden=\"true\"></i> " +
                                     ((Admin)Session["Admin"]).UserName;
                    btnLogout.Click += btnLogOut_Click;
                }
                Process_PageLoad(sender, e);
            }
            else
            {
                Response.Redirect("AdminLoginGUI.aspx");
            }
        }

        private void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("AdminLoginGUI.aspx");
        }

        protected abstract void Process_PageLoad(object sender, EventArgs e);
    }
}
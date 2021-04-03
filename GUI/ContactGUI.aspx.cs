using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DAL;

namespace PRN292_Project.GUI
{
    public partial class ContactGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblSuccess.Visible = false;
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            Contact c = new Contact();
            c.FirstName = txtFirstName.Text.Trim();
            c.LastName = txtLastName.Text.Trim();
            c.Email = txtEmail.Text.Trim();
            c.PhoneNumber = txtPhone.Text.Trim();
            c.Title = txtTitle.Text.Trim();
            c.Content = txtContent.Text.Trim();
            if(ContactDAO.Insert(c))
            {
                lblSuccess.Visible = true;
                lblSuccess.Text = "Send Successfully!";
            }
        }
    }
}
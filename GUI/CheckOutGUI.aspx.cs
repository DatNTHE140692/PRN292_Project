using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DAL;
using PRN292_Project.DTL;

namespace PRN292_Project.GUI
{
    public partial class CheckOutGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Order o = new Order();
            o.OrderDate = DateTime.Today;
            o.FirstName = txtFirstName.Text.Trim();
            o.LastName = txtLastName.Text.Trim();
            o.Email = txtEmail.Text.Trim();
            o.PhoneNumber = txtPhone.Text.Trim();
            o.Address = txtAddress.Text.Trim();
            o.Province = txtProvince.Text.Trim();
            o.City = txtCity.Text.Trim();
            o.Country = txtCountry.Text.Trim();
            o.Total = float.Parse(Session["totalCart"].ToString());
            OrderDAO.Insert(o);
        }
    }
}
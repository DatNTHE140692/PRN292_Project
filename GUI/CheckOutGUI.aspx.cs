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
            o.OrderDate = DateTime.Now;
            o.FirstName = txtFirstName.Text.Trim();
            o.LastName = txtLastName.Text.Trim();
            o.Email = txtEmail.Text.Trim();
            o.PhoneNumber = txtPhone.Text.Trim();
            o.Address = txtAddress.Text.Trim();
            o.Province = txtProvince.Text.Trim();
            o.City = txtCity.Text.Trim();
            o.Country = txtCountry.Text.Trim();
            o.Total = float.Parse(Session["totalCart"].ToString());
            o.Shipment = new Shipment();
            o.Shipment.ID = int.Parse(cbShipment.SelectedValue);
            if (OrderDAO.Insert(o))
            {
                List<Product> Cart = Session["Cart"] as List<Product>;
                foreach (Product p in Cart)
                {
                    OrderDetail od = new OrderDetail();
                    od.Product = p;
                    od.Order = new Order();
                    od.Order.ID = OrderDAO.GetMaxID();
                    OrderDetailDAO.Insert(od);
                }
                Session.Clear();
                Session.Abandon();
                Cart = new List<Product>();
                float totalCart = 0;
                Session.Add("Cart", Cart);
                Session.Add("totalCart", totalCart);
                Response.Redirect("OrderCompleteGUI.aspx");
            }
        }
    }
}
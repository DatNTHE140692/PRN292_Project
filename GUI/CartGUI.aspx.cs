using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DTL;

namespace PRN292_Project.GUI
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> Cart = Session["Cart"] as List<Product>;
            string remove = Request.QueryString["remove"];
            if (!string.IsNullOrEmpty(remove))
            {
                Product p = new Product();
                p.Id = int.Parse(remove);
                if (Cart.Contains(p))
                {
                    Cart.Remove(p);
                }
            }
            float totalCart = 0;
            foreach (Product c in Cart)
            {
                totalCart += c.Price * c.Quantity;
            }
            Session["totalCart"] = totalCart;
        }
    }
}
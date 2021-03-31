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
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int quantity = int.Parse(Request.Form["txtQuantity"]);
            int id = int.Parse(Request.QueryString["id"]);
            List<Product> Cart = (List<Product>) Session["Cart"];
            bool isExisted = false;
            Product prod = null;
            foreach (Product p in Cart)
            {
                if(p.Id == id)
                {
                    isExisted = true;
                    prod = p;
                    break;
                }
            }

            if (isExisted)
            {
                prod.Quantity += quantity;
            }
            else
            {
                prod = ProductDAO.GetProduct(id);
                prod.Quantity = quantity;
                Cart.Add(prod);
            }

            float totalCart = 0;
            foreach (Product p in Cart)
            {
                totalCart += p.Quantity * p.Price;
            }

            Session["totalCart"] = totalCart;
        }
    }
}
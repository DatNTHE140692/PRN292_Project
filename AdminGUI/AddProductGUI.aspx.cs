using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;



namespace PRN292_Project.AdminGUI
{
    public partial class AddProductGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   if(!IsPostBack)
            genPageLoad();
        }
        public void genPageLoad()
        {
            ddlCategory.DataSource = DAL.DAO.GetDataTable("select * from [Product_Categories]");
            ddlCategory.DataValueField = "id";
            ddlCategory.DataTextField = "name";
            ddlCategory.DataBind();

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
                DTL.Category c = new DTL.Category();
                c.Id = int.Parse(ddlCategory.SelectedValue);
                
                DAL.ProductDAO.Insert(new DTL.Product(
                    txtName.Text, float.Parse(txtPrice.Text),c, txtOverview.Text, 
                    txtDescription.Text, true, new ArrayList() {fuSecond.ToString(), 
                        fuThird.ToString(), fuFourth.ToString() }, fuThumnail.ToString()));

                    Response.Redirect("ProductsManager.aspx");

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductsManager.aspx");
        }
    }
}
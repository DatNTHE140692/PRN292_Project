using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DAL;
using PRN292_Project.DTL;

namespace PRN292_Project.GUI
{
    public partial class ShopGUI : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cate = Request.QueryString["category"];
                string key = Request.QueryString["keyword"];
                if (string.IsNullOrEmpty(cate) && string.IsNullOrEmpty(key))
                {
                    lbProducts_DataLoad(ProductDAO.GetDataTable());
                }

                if (!string.IsNullOrEmpty(key) && string.IsNullOrEmpty(cate))
                {
                    lbProducts_DataLoad(ProductDAO.GetDataTable(key));
                }

                if (!string.IsNullOrEmpty(cate) && string.IsNullOrEmpty(key))
                {
                    Category c = new Category();
                    c.Id = int.Parse(cate);
                    lbProducts_DataLoad(ProductDAO.GetDataTable(c));
                }
            }
        }

        private void lbProducts_DataLoad(DataTable dt)
        {
            products.DataSource = null;
            products.DataSourceID = null;
            products.DataSource = dt;
            products.DataBind();
        }

        protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            dtpArticles.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            string cate = Request.QueryString["category"];
            string key = Request.QueryString["keyword"];
            if (string.IsNullOrEmpty(cate) && string.IsNullOrEmpty(key))
            {
                lbProducts_DataLoad(ProductDAO.GetDataTable());
            }

            if (!string.IsNullOrEmpty(key) && string.IsNullOrEmpty(cate))
            {
                lbProducts_DataLoad(ProductDAO.GetDataTable(key));
            }

            if (!string.IsNullOrEmpty(cate) && string.IsNullOrEmpty(key))
            {
                Category c = new Category();
                c.Id = int.Parse(cate);
                lbProducts_DataLoad(ProductDAO.GetDataTable(c));
            }
        }
    }
}
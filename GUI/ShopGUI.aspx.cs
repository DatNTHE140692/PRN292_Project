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
    public partial class ShopGUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listViewDataBind();
            }
        }

        private void listViewDataBind()
        {
            products.DataSource = null;
            products.DataSourceID = null;
            //products.DataSource = ProductDAO.GetDataTable();
            products.DataBind();
        }

        protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            dtpArticles.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            listViewDataBind();
        }
    }
}
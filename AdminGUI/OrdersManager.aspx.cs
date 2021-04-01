using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DAL;
using PRN292_Project.DTL;

namespace PRN292_Project.AdminGUI
{
    public partial class OrdersManager : BaseAuthentication
    {
        protected override void Process_PageLoad(object sender, EventArgs e)
        {
        }

        protected void tblOrders_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(tblOrders.SelectedDataKey.Value.ToString());
            lblOrderDetail.Visible = true;
            Order o = new Order();
            o.ID = id;
            DataTable dt = OrderDetailDAO.GeDataTable(o);
            tblOrderDetails.DataSource = dt;
            tblOrderDetails.DataBind();
        }
        
        protected void tblOrders_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }
    }
    
}
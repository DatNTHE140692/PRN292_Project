using PRN292_Project.DAL;
using PRN292_Project.DTL;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace PRN292_Project.AdminGUI
{
    public partial class ProductManager : BaseAuthentication
    {
        protected override void Process_PageLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tblProducts_DataLoad(-1);
            }
        }

        protected void cbCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(cbCategory.SelectedValue);
            tblProducts.PageIndex = 0;
            tblProducts_DataLoad(id);
        }

        private void tblProducts_DataLoad(int id)
        {
            SqlCommand cmd;
            if (id == -1)
            {
                cmd =
                    new SqlCommand(
                        @"SELECT p.id [ID], p.name [Name], p.price [Price], p.inStock [Stock], p.thumbnail [Thumbnail], pc.name [Category] " +
                        "FROM dbo.Products p INNER JOIN dbo.Product_Categories pc ON pc.id = p.cid " +
                        "ORDER BY p.id DESC");
            }
            else
            {
                cmd =
                    new SqlCommand(
                        @"SELECT p.id [ID], p.name [Name], p.price [Price], p.inStock [Stock], p.thumbnail [Thumbnail], pc.name [Category] " +
                        "FROM dbo.Products p INNER JOIN dbo.Product_Categories pc ON pc.id = p.cid WHERE pc.id = @id " +
                        "ORDER BY p.id DESC");
                cmd.Parameters.AddWithValue("@id", id);
            }
            DataTable dt = DAO.GetDataTable(cmd);
            tblProducts.DataSource = dt;
            tblProducts.DataBind();
        }

        protected void tblProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow) tblProducts.Rows[e.RowIndex];
            Product p = new Product();
            p.Id = int.Parse(tblProducts.DataKeys[e.RowIndex].Value.ToString());
            if (ProductDAO.Delete(p))
            {
                int id = int.Parse(cbCategory.SelectedValue);
                tblProducts_DataLoad(id);
            }
        }

        protected void tblProducts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            tblProducts.PageIndex = e.NewPageIndex;
            int id = int.Parse(cbCategory.SelectedValue);
            tblProducts_DataLoad(id);
        }

        protected void tblProducts_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProductGUI.aspx");
        }
    }
}
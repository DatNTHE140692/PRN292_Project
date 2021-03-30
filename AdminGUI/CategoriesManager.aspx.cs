using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DAL;
using PRN292_Project.DTL;

namespace PRN292_Project.AdminGUI
{
    public partial class ProductCategoriesManager : BaseAuthentication
    {
        protected override void Process_PageLoad(object sender, EventArgs e) { }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Category c = new Category();
            c.Name = txtName.Text.Trim();
            CategoryDAO.Insert(c);
        }
    }
}
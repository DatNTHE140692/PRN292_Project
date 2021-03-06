using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PRN292_Project.DAL;
using PRN292_Project.DTL;

namespace PRN292_Project.AdminGUI
{
    public partial class AddProductGUI : BaseAuthentication
    {
        protected override void Process_PageLoad(object sender, EventArgs e)
        {
            
        }

        protected void btnThumbUpload_Click(object sender, EventArgs e)
        {
            if (fuThumbnail.HasFile)
            {
                fuThumbnail.SaveAs(Server.MapPath("../ASSETS/IMG/") + fuThumbnail.FileName);
                txtThumbnail.Text = "../ASSETS/IMG/" + fuThumbnail.FileName;
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (ImageUploader1.HasFile)
            {
                ImageUploader1.SaveAs(Server.MapPath("../ASSETS/IMG/") + ImageUploader1.FileName);
                txtImage1.Text = "../ASSETS/IMG/" + ImageUploader1.FileName;
            }
            if (ImageUploader2.HasFile)
            {
                ImageUploader2.SaveAs(Server.MapPath("../ASSETS/IMG/") + ImageUploader2.FileName);
                txtImage2.Text = "../ASSETS/IMG/" + ImageUploader2.FileName;
            }
            if (ImageUploader3.HasFile)
            {
                ImageUploader3.SaveAs(Server.MapPath("../ASSETS/IMG/") + ImageUploader3.FileName);
                txtImage3.Text = "../ASSETS/IMG/" + ImageUploader3.FileName;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Product p = new Product();
            p.Name = txtName.Text.Trim();
            p.Price = float.Parse(txtPrice.Text.Trim());
            p.Category = new Category();
            p.Category.Id = int.Parse(cbCategories.SelectedValue);
            p.Overview = txtOverview.Text.Trim();
            p.Description = txtDescription.Text.Trim();
            p.Thumbnail = txtThumbnail.Text;
            p.IsInStock = ckbStock.Checked;
            if (ProductDAO.Insert(p))
            {
                int id = ProductDAO.GetMaxID();
                if (!string.IsNullOrEmpty(txtImage1.Text))
                    p.ImageUrls.Add(txtImage1.Text);
                if (!string.IsNullOrEmpty(txtImage2.Text))
                    p.ImageUrls.Add(txtImage2.Text);
                if (!string.IsNullOrEmpty(txtImage3.Text))
                    p.ImageUrls.Add(txtImage3.Text);
                foreach (string url in p.ImageUrls)
                {
                    ProductDAO.Insert(id, url);
                }
                Response.Redirect("ProductsManager.aspx");
            }
        }
    }
}
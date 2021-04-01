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
                ViewState.Add("Thumbnail", "../ASSETS/IMG/" + fuThumbnail.FileName);
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (ImageUploader1.HasFile)
            {
                ImageUploader1.SaveAs(Server.MapPath("../ASSETS/IMG/") + ImageUploader1.FileName);
                ViewState.Add("Image1", "../ASSETS/IMG/" + ImageUploader1.FileName);
            }
            if (ImageUploader2.HasFile)
            {
                ImageUploader2.SaveAs(Server.MapPath("../ASSETS/IMG/") + ImageUploader2.FileName);
                ViewState.Add("Image2", "../ASSETS/IMG/" + ImageUploader2.FileName);
            }
            if (ImageUploader3.HasFile)
            {
                ImageUploader3.SaveAs(Server.MapPath("../ASSETS/IMG/") + ImageUploader3.FileName);
                ViewState.Add("Image3", "../ASSETS/IMG/" + ImageUploader3.FileName);
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
            p.Thumbnail = ViewState["Thumbnail"].ToString();
            p.IsInStock = ckbStock.Checked;
            if (ProductDAO.Insert(p))
            {
                int id = ProductDAO.GetMaxID();
                if (ViewState["Image1"] != null && !string.IsNullOrEmpty(ViewState["Image1"].ToString()))
                    p.ImageUrls.Add(ViewState["Image1"].ToString());
                if (ViewState["Image2"] != null && !string.IsNullOrEmpty(ViewState["Image2"].ToString()))
                    p.ImageUrls.Add(ViewState["Image2"].ToString());
                if (ViewState["Image3"] != null && !string.IsNullOrEmpty(ViewState["Image3"].ToString()))
                    p.ImageUrls.Add(ViewState["Image3"].ToString());
                foreach (string url in p.ImageUrls)
                {
                    ProductDAO.Insert(id, url);
                }
                Response.Redirect("ProductsManager.aspx");
            }
        }
    }
}
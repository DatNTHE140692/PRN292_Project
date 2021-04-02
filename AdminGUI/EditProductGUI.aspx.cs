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
    public partial class EditProductGUI : BaseAuthentication
    {
        protected override void Process_PageLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string pid = Request.QueryString["id"];
                if (string.IsNullOrEmpty(pid))
                {
                    Response.Redirect("ProductsManager.aspx");
                }
                else
                {
                    int id = int.Parse(pid);
                    Product p = ProductDAO.GetProduct(id);
                    p.Id = id;
                    txtName.Text = p.Name;
                    txtPrice.Text = p.Price.ToString();
                    cbCategories.SelectedValue = p.Category.Id.ToString();
                    ckbStock.Checked = p.IsInStock;
                    txtOverview.Text = p.Overview;
                    txtDescription.Text = p.Description;
                    txtThumbnail.Text = p.Thumbnail;
                    for (int i = 0; i < p.ImageUrls.Count; i++)
                    {
                        switch (i)
                        {
                            case 0:
                                txtImage1.Text = p.ImageUrls[0].ToString();
                                break;
                            case 1:
                                txtImage2.Text = p.ImageUrls[1].ToString();
                                break;
                            case 2:
                                txtImage3.Text = p.ImageUrls[2].ToString();
                                break;
                        }
                    }
                }
            }
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
            string pid = Request.QueryString["id"];
            int id = int.Parse(pid);
            Product p = new Product();
            p.Id = id;
            p.Name = txtName.Text.Trim();
            p.Price = float.Parse(txtPrice.Text.Trim());
            p.Category = new Category();
            p.Category.Id = int.Parse(cbCategories.SelectedValue);
            p.Overview = txtOverview.Text.Trim();
            p.Description = txtDescription.Text.Trim();
            p.Thumbnail = txtThumbnail.Text;
            p.IsInStock = ckbStock.Checked;
            p.ImageUrls = new ArrayList();
            if(ProductDAO.Update(p))
            {
                ProductDAO.Delete_Product_Images(id);
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
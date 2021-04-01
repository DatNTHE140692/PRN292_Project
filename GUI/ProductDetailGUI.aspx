<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetailGUI.aspx.cs" Inherits="PRN292_Project.GUI.ProductDetail" %>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="PRN292_Project.DTL" %>
<%@ Import Namespace="PRN292_Project.DAL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%
        string req_id = Request.QueryString["id"];
        Product p = null;
        if (!string.IsNullOrEmpty(req_id.Trim()))
        {
            int id = int.Parse(req_id);
            p = ProductDAO.GetProduct(id);
            if (p == null)
            {
                Response.Redirect("ShopGUI.aspx");
            }
        }
        else
        {
            Response.Redirect("ShopGUI.aspx");
        }
    %>
    <title><%= p.Name %> | Pet Store</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%
        string req_id = Request.QueryString["id"];
        Product p = null;
        if (!string.IsNullOrEmpty(req_id.Trim()))
        {
            int id = int.Parse(req_id);
            p = ProductDAO.GetProduct(id);
            if (p == null)
            {
                Response.Redirect("ShopGUI.aspx");
            }
        }
        else
        {
            Response.Redirect("ShopGUI.aspx");
        }
    %>
    <div class="container py-3">
        <div class="row">
            <div class="col-md-6">
                <%
                    ArrayList imgUrls = p.ImageUrls;
                    if (imgUrls.Count > 0)
                    {
                %>
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <%
                            bool isFirstSlide = true;
                            foreach (string imgUrl in imgUrls)
                            {
                                if (isFirstSlide)
                                {
                        %>
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="<%= imgUrl %>">
                        </div>
                        <%
                                isFirstSlide = false;
                            }
                            else
                            {
                        %>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="<%= imgUrl %>">
                        </div>
                        <%
                                }
                            }
                        %>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <%
                    }
                    else
                    {
                %>
                        <img src="<%= p.Thumbnail %>" class="w-100"/>
                <% } %>
            </div>
            <div class="col-md-6">
                <h3><%= p.Name %></h3>
                <a class="badge badge-primary" href="ShopGUI.aspx?category=<%= p.Category.Id %>"><%= p.Category.Name %></a>
                <p>Quantity: <input type="number" min="1" value="1" name="txtQuantity"/></p>
                <asp:Button runat="server" CssClass="btn btn-success" Text="Add to Cart" ID="btnAdd" OnClick="btnAdd_Click" />
                <p><%= p.Overview %></p>
            </div>
            <div class="col-md-12">
                <p>
                    <%= p.Description %>
                </p>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="PRN292_Project.GUI.ProductDetail" %>

<%@ Import Namespace="PRN292_Project.DTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%
        Product p = new Product();
    %>
    <div class="container py-3">
        <div class="row">
            <div class="col-md-6">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <% for (int i = 0; i < p.ImageUrls.Count; i++)
                            {
                        %>
                        <li data-target="#carouselExampleIndicators" data-slide-to="<%= i %>"></li>
                        <% } %>
                    </ol>
                    <div class="carousel-inner">
                        <% string imageUrl = p.ImageUrls[0];%>
                        <div class="carousel-item active">
                            <asp:Image runat="server" CssClass="d-block w-100" ImageUrl="<%= imageUrl %>" />
                        </div>
                        <%
                            for (int i = 1; i < p.ImageUrls.Count; i++)
                            {
                                imageUrl = p.ImageUrls[i];
                        %>
                        <div class="carousel-item">
                            <asp:Image runat="server" CssClass="d-block w-100" ImageUrl="<%= imageUrl %>" />
                        </div>
                        <%
                            }
                        %>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="col-md-6">
                <h1><%= p.Name %></h1>
                <h6><%= p.Category.Name %></h6>
                <h3>$<%= p.Price %></h3>
                <p>
                    <%= p.Overview %>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <%= p.Description %>
            </div>
        </div>
    </div>
</asp:Content>

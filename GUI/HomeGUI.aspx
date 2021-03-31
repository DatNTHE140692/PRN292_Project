<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="HomeGUI.aspx.cs" Inherits="PRN292_Project.HomeGUI" %>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="PRN292_Project.DAL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home | Pet Store</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-3 col-sm-4">
                <ul class="list-group">
                    <li class="list-group-item active">Product Categories</li>
                    <%
                        DataTable dt = CategoryDAO.GetDataTable();
                        foreach (DataRow row in dt.Rows)
                        {
                    %>
                    <li class="list-group-item d-flex justify-content-between align-items-center"><a href="ShopGUI.aspx?Category=<%= row[0].ToString() %>"><%= row[1].ToString() %></a><span class="badge badge-primary badge-pill"><%= row[2].ToString() %></span></li>
                    <%
                        }
                    %>
                </ul>
            </div>
            <div class="col-md-9 col-sm-8">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/pet-shop-sai-gon-1.jpg" CssClass="d-block w-100" AlternateText="First slide" />
                        </div>
                        <div class="carousel-item">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/pet-shop-sai-gon-2.jpg" CssClass="d-block w-100" AlternateText="Second slide" />
                        </div>
                        <div class="carousel-item">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/pet-shop-sai-gon-3.jpg" CssClass="d-block w-100" AlternateText="Third slide" />
                        </div>
                        <div class="carousel-item">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/pet-shop-sai-gon-4.jpg" CssClass="d-block w-100" AlternateText="Fourth slide" />
                        </div>
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
        </div>
        <h3>Latest Products</h3>
        <asp:ListView runat="server" ID="lvLatestProduct" DataSourceID="dsLatest" EnableModelValidation="True">
            <LayoutTemplate>
                <div class="row">
                    <div id="itemPlaceholder" runat="server"></div>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div class="col-md-3 col-sm-6 py-1" runat="server">
                    <div class="card">
                        <div class="card-header">
                            <asp:HyperLink ID="TitleLink" Font-Bold="True" CssClass="h5" runat="server" NavigateUrl='<%# "ProductDetailGUI.aspx?id=" + Eval("ID") %>' Text='<%# Eval("Name") %>' />
                        </div>
                        <div class="card-body py-0 px-0">
                            <asp:Image runat="server" CssClass="w-100" ImageUrl='<%# Eval("Thumbnail") %>' />
                        </div>
                        <div class="card-footer">
                            <asp:Label runat="server" CssClass="text-dark" Font-Bold="True">$<%# Eval("Price") %></asp:Label>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:ObjectDataSource runat="server" ID="dsLatest" SelectMethod="GetTop4Latest" TypeName="PRN292_Project.DAL.ProductDAO"></asp:ObjectDataSource>
    </div>
</asp:Content>

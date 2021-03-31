<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="ShopGUI.aspx.cs" Inherits="PRN292_Project.GUI.ShopGUI" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="PRN292_Project.DAL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Shop | Pet Store</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-3">
                <div class="search">
                    <ul class="list-group mb-3">
                        <li class="list-group-item active">
                            <asp:Label runat="server" Text="Search" CssClass="text-light"></asp:Label>
                        </li>
                        <li class="list-group-item">
                            <div class="d-flex flex-row form-group">
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtSearch"></asp:TextBox>
                                <asp:Button runat="server" ID="btnSearch" Text="Search" CssClass="ml-1 btn btn-success" />
                            </div>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSearch" ErrorMessage="Enter Keyword!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </li>
                    </ul>
                </div>
                <div class="product-categories">
                    <ul class="list-group">
                        <li class="list-group-item active">Product Categories</li>
                        <%
                            DataTable dt = CategoryDAO.GetDataTable();
                            foreach (DataRow row in dt.Rows)
                            {
                        %>
                            <li class="list-group-item d-flex justify-content-between align-items-center"><a href="ShopGUI.aspx?category=<%= row[0].ToString() %>"><%= row[1].ToString() %></a><span class="badge badge-primary badge-pill"><%= row[2].ToString() %></span></li>
                        <%
                        }
                        %>
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <asp:ListView runat="server" ID="products" OnPagePropertiesChanging="OnPagePropertiesChanging">
                    <LayoutTemplate>
                        <div class="row">
                            <div id="itemPlaceholder" runat="server"></div>
                        </div>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <div class="col-md-4" id="itemPlaceHolder" runat="server">
                            <div class="card">
                                <div class="card-header">
                                    <asp:Label runat="server" Text="Test"></asp:Label>
                                </div>
                                <div class="card-body">
                                    <asp:Image runat="server" CssClass="w-100" ImageUrl="../ASSETS/IMG/thuc-an-cho-meo-banner.jpg" />
                                </div>
                                <div class="card-footer">
                                    <asp:Button runat="server" CssClass="btn btn-primary" Text="Add To Cart" />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <div class="row py-3">
                    <div class="col-md-12">
                        <ul class="pagination">
                            <asp:DataPager ID="dtpArticles" runat="server" PagedControlID="products" PageSize="9">
                                <Fields>
                                    <asp:NumericPagerField ButtonType="Link" CurrentPageLabelCssClass="bg-primary page-link text-light"
                                        NumericButtonCssClass="page-link" />
                                </Fields>
                            </asp:DataPager>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

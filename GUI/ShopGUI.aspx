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
                        <div class="col-md-4 pb-3 pr-0" id="itemPlaceHolder" runat="server">
                            <div class="card">
                                <div class="card-header">
                                    <asp:HyperLink runat="server" NavigateUrl='<%#"ProductDetailGUI.aspx?id=" + Eval("ID") %>'><%# Eval("Name") %></asp:HyperLink>
                                </div>
                                <div class="card-body px-0 py-0">
                                    <asp:Image runat="server" CssClass="w-100" ImageUrl='<%# Eval("Thumbnail") %>' />
                                </div>
                                <div class="card-footer">
                                    <asp:Label runat="server" Text='<%#"$" + Eval("Price") %>'></asp:Label>
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
                                    <asp:NumericPagerField ButtonType="Button" CurrentPageLabelCssClass="btn btn-primary" NumericButtonCssClass="btn btn-light"/>
                                </Fields>
                            </asp:DataPager>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="DashboardGUI.aspx.cs" Inherits="PRN292_Project.AdminGUI.DashboardGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard | Admin Control Panel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-sm-4 py-1">
                <div class="card">
                    <asp:HyperLink runat="server" NavigateUrl="ProductsManager.aspx" CssClass="card-body">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/shops.svg" CssClass="w-100" />
                    </asp:HyperLink>
                    <asp:HyperLink runat="server" NavigateUrl="ProductsManager.aspx" CssClass="card-footer text-center" Font-Bold="True">
                        Products
                    </asp:HyperLink>
                </div>
            </div>
            <div class="col-sm-4 py-1">
                <div class="card">
                    <asp:HyperLink runat="server" NavigateUrl="OrdersManager.aspx" CssClass="card-body">
                        <asp:Image runat="server" ImageUrl="../ASSETS/IMG/checklist.svg" CssClass="w-100"/>
                    </asp:HyperLink>
                    <asp:HyperLink runat="server" NavigateUrl="OrdersManager.aspx" CssClass="card-footer text-center" Font-Bold="True">
                        Orders
                    </asp:HyperLink>
                </div>
            </div>
            <div class="col-sm-4 py-1">
                <div class="card">
                    <asp:HyperLink runat="server" NavigateUrl="ContactManager.aspx" CssClass="card-body">
                        <asp:Image runat="server" ImageUrl="../ASSETS/IMG/inbox.svg" CssClass="w-100"/>
                    </asp:HyperLink>
                    <asp:HyperLink runat="server" NavigateUrl="ContactManager.aspx" CssClass="card-footer text-center" Font-Bold="True">
                        Contact
                    </asp:HyperLink>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

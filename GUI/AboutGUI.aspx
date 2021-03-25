<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="AboutGUI.aspx.cs" Inherits="PRN292_Project.GUI.AboutGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>About Us | Pet Store</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <h3>Our Team</h3>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <asp:HyperLink runat="server" NavigateUrl="https://www.facebook.com/deleteall00/">
                            <asp:Image runat="server" CssClass="w-100" ImageUrl="../ASSETS/IMG/person-icon.png"/>
                        </asp:HyperLink>
                    </div>
                    <div class="card-footer text-center">
                        <asp:HyperLink runat="server" Text="Nguyễn Tiến Đạt" NavigateUrl="https://www.facebook.com/deleteall00/"></asp:HyperLink>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <asp:HyperLink runat="server" NavigateUrl="https://www.facebook.com/profile.php?id=100025087456359">
                            <asp:Image runat="server" CssClass="w-100" ImageUrl="../ASSETS/IMG/person-icon.png" />
                        </asp:HyperLink>
                    </div>
                    <div class="card-footer text-center">
                        <asp:HyperLink runat="server" Text="Lê Thị Minh Châu" NavigateUrl="https://www.facebook.com/profile.php?id=100025087456359"></asp:HyperLink>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <asp:HyperLink runat="server" NavigateUrl="https://www.facebook.com/profile.php?id=100004993741892">
                            <asp:Image runat="server" CssClass="w-100" ImageUrl="../ASSETS/IMG/person-icon.png" />
                        </asp:HyperLink>
                    </div>
                    <div class="card-footer text-center">
                        <asp:HyperLink runat="server" Text="Đặng Huy Hoàng" NavigateUrl="https://www.facebook.com/profile.php?id=100004993741892"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetailGUI.aspx.cs" Inherits="PRN292_Project.GUI.ProductDetail" %>

<%@ Import Namespace="PRN292_Project.DTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <%
                    int id = int.Parse(Request.QueryString["id"].ToString());
                %>
                
            </div>
        </div>
    </div>
</asp:Content>

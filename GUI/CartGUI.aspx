<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="CartGUI.aspx.cs" Inherits="PRN292_Project.GUI.Cart" %>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="PRN292_Project.DTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <h4>Your Cart</h4>
                <table class="w-100 table table-striped">
                    <tr>
                        <th>Thumbnail</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Functions</th>
                    </tr>
                    <%
                        List<Product> Cart = Session["Cart"] as List<Product>;
                        float totalCart = float.Parse(Session["totalCart"].ToString());
                        foreach (Product p in Cart)
                        {
                    %>
                    <tr>
                        <td>
                            <img src="<%= p.Thumbnail %>" width="150px" />
                        </td>
                        <td><a href="ProductDetailGUI.aspx?id=<%= p.Id %>" class="font-weight-bold"><%= p.Name %></a></td>
                        <td>$<%= p.Price %></td>
                        <td><%= p.Quantity %></td>
                        <td>$<%= p.Quantity * p.Price %></td>
                        <td><a href="CartGUI.aspx?remove=<%= p.Id %>" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                        <td></td>
                        <td>Total:</td>
                        <td></td>
                        <td></td>
                        <td>$<%= totalCart %></td>
                        <td></td>
                    </tr>
                </table>
                <br/>
                <asp:HyperLink runat="server" CssClass="btn btn-primary" Text="Go Back" NavigateUrl="HomeGUI.aspx"></asp:HyperLink>
                <asp:HyperLink runat="server" CssClass="btn btn-success" Text="Check Out" NavigateUrl="CheckOutGUI.aspx"></asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>

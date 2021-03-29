<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="PRN292_Project.GUI.Cart" %>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="PRN292_Project.DTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <%
                List<Product> cart = Session["Cart"] as List<Product>;
                int count = cart.Count;
                float subTotal = 0;
                if (count == 0)
                {
            %>
            <asp:Label runat="server" ForeColor="#ff0000" Text="Cart Empty!" Font-Bold="True"></asp:Label>
            <% }
                else
                { %>
            <table border="1">
                <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th></th>
                </tr>
                <tr>
                    <%
                        foreach (Product p in cart)
                        {
                            subTotal += p.Price * p.Quantity;
                    %>
                    <td>
                        <div class="row">
                            <div class="col">
                                <asp:Image runat="server" ImageUrl="<%= p.Thumbnail %>" />
                            </div>
                            <div class="col">
                                <asp:Label runat="server" Text="<%= p.Name %>" Font-Bold="True"></asp:Label>
                                <br />
                                <br />
                                <asp:Label runat="server" Text="<%= p.Category.Name %>"></asp:Label>
                            </div>
                        </div>
                    </td>
                    <td>$<%= p.Price %>
                    </td>
                    <td>
                        <input type="number" value="<%= p.Quantity %>" class="form-control"/>
                    </td>
                    <td>
                        <%= p.Price * p.Quantity %>
                    </td>
                    <td>
                        <asp:HyperLink runat="server" CssClass="btn btn-danger" ID="btnRemove" NavigateUrl="remove?id=<%= p.Id %>">
                            <i class="fa fa-trash"></i>
                        </asp:HyperLink>
                    </td>
                    <%
                        }
                    %>
                    <asp:Label runat="server" ID="lblSubTotal" Text="Sub Total: <%= subTotal %>"></asp:Label>
                </tr>
            </table>
            <% } %>
        </div>
    </div>
</asp:Content>

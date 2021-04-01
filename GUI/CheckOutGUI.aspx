<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/Site.Master" AutoEventWireup="true" CodeBehind="CheckOutGUI.aspx.cs" Inherits="PRN292_Project.GUI.CheckOutGUI" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="PRN292_Project.DTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Order Form</h5>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label runat="server" Text="First Name:"></asp:Label>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtFirstName"></asp:TextBox>
                                </div>
                                <div class="col">
                                    <asp:Label runat="server" Text="Last Name:"></asp:Label>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtLastName"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label runat="server" Text="Email:"></asp:Label>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail"></asp:TextBox>
                                </div>
                                <div class="col">
                                    <asp:Label runat="server" Text="Phone Number:"></asp:Label>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtPhone"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label runat="server" Text="Address:"></asp:Label>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtAddress"></asp:TextBox>
                                </div>
                                <div class="col">
                                    <asp:Label runat="server" Text="Province:"></asp:Label>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtProvince" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtProvince"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label runat="server" Text="City:"></asp:Label>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtCity"></asp:TextBox>
                                </div>
                                <div class="col">
                                    <asp:Label runat="server" Text="Country:"></asp:Label>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCountry" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtCountry"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Shipment:"></asp:Label>
                            <asp:DropDownList runat="server" CssClass="form-control" ID="cbShipment" DataSourceID="dsShipment" DataTextField="name" DataValueField="id"/>
                            <asp:ObjectDataSource runat="server" ID="dsShipment" SelectMethod="GetDataTable" TypeName="PRN292_Project.DAL.ShipmentDAO"></asp:ObjectDataSource>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:HyperLink runat="server" Text="Back To Cart" CssClass="btn btn-danger" NavigateUrl="CartGUI.aspx"></asp:HyperLink>
                        <asp:Button runat="server" CssClass="btn btn-success" Text="Proceed" CausesValidation="True" ID="btnOrder" OnClick="btnOrder_Click"/>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <table class="w-100 table table-striped">
                    <tr>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                    <tr>
                    <%
                        List<Product> Cart = Session["Cart"] as List<Product>;
                        float totalCart = float.Parse(Session["totalCart"].ToString());
                        foreach (Product p in Cart)
                        {
                    %>
                        <td><a href="ProductDetailGUI.aspx?id=<%= p.Id %>"><%= p.Name %></a></td>
                        <td>$<%= p.Price %></td>
                        <td><%= p.Quantity %></td>
                        <td>$<%= p.Quantity * p.Price %></td>
                    <%
                        }
                    %>
                    </tr>
                    <tr>
                        <td>Total:</td>
                        <td></td>
                        <td></td>
                        <td>$<%= totalCart %></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

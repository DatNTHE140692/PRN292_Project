<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="ProductAddGUI.aspx.cs" Inherits="PRN292_Project.AdminGUI.ProductAddGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <asp:Label runat="server" Text="Product Detail"></asp:Label>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Label runat="server" Text="Product Name:" AssociatedControlID="txtName"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Price:" AssociatedControlID="txtPrice"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ControlToValidate="txtPrice" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator runat="server" MinimumValue="0" MaximumValue="999999999999999" ControlToValidate="txtPrice" ErrorMessage="Price must be >= 0" SetFocusOnError="True"></asp:RangeValidator>
                            <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Category:"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ControlToValidate="cbCategory" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:DropDownList runat="server" CssClass="form-control" ID="cbCategory" />
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Overview:" AssociatedControlID="txtOverview"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOverview" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtOverview" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Description:" AssociatedControlID="txtDescription"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDescription" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:CheckBox runat="server" Text="&nbsp;In Stock" />
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button runat="server" Text="Save" CausesValidation="True" CssClass="btn btn-primary" />
                        <asp:HyperLink runat="server" Text="Cancel" CssClass="btn btn-danger"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

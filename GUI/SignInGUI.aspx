<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="SignInGUI.aspx.cs" Inherits="PRN292_Project.GUI.SignInGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sign In | Pet Shop</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row d-flex justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Sign In Now!</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Label runat="server" Text="User Name:"></asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtUserName"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Password:"></asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <asp:CheckBox runat="server" ID="RememberMe" Text="&nbsp;Remember Me"/>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="btn btn-primary btn-lg" />
                        <asp:HyperLink runat="server" NavigateUrl="HomeGUI.aspx" CssClass="btn btn-danger btn-lg" Text="Cancel"></asp:HyperLink>
                        <hr class="my-3">
                        <asp:Label runat="server" CssClass="text-center">Don't have account?</asp:Label>
                        <asp:HyperLink runat="server" CssClass="text-primary font-weight-bold" NavigateUrl="SignUpGUI.aspx" Text="Sign Up Now!"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

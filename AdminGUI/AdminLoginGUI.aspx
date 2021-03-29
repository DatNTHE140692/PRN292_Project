<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginGUI.aspx.cs" Inherits="PRN292_Project.AdminGUI.AdminLoginGUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Admin Control Panel</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <asp:Label runat="server" Text="Admin Control Panel" Font-Bold="True"></asp:Label>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <asp:Label runat="server" Text="Username:" AssociatedControlID="txtUserName"></asp:Label>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName" ErrorMessage="*" SetFocusOnError="True" Text="*"></asp:RequiredFieldValidator>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtUserName"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="*" SetFocusOnError="True" Text="*"></asp:RequiredFieldValidator>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label runat="server" ForeColor="#ff0000" ID="txtErrorMessage" Font-Bold="True" Text="Invalid Username / Password!"></asp:Label>
                            </div>
                        </div>
                        <div class="card-footer">
                            <asp:Button runat="server" Text="Login" CssClass="btn btn-success" CausesValidation="True" ID="btnLogin" OnClick="btnLogin_Click"/>
                            <asp:HyperLink runat="server" CssClass="btn btn-danger" Text="Cancel" NavigateUrl="../GUI/HomeGUI.aspx"></asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
<style>
    body {
        background-color: #185886;
    }
    #form1 {
        transform: translateY(50%);
    }
</style>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="SignInGUI.aspx.cs" Inherits="PRN292_Project.GUI.SignInGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sign In | Pet Store</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row d-flex justify-content-center">
            <div class="col-md-12">
                <asp:Login ID="Login" runat="server" CssClass="w-100" OnAuthenticate="Login_Authenticate" DestinationPageUrl="HomeGUI.aspx">
                    <LayoutTemplate>
                        <div class="card">
                            <div class="card-header">
                                <h3>Sign In Now!</h3>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    <div class="d-flex flex-row justify-content-center align-items-center">
                                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server"
                                            ControlToValidate="UserName" ErrorMessage="User Name is required."
                                            ToolTip="User Name is required." ValidationGroup="Login">*
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    <div class="d-flex flex-row justify-content-center align-items-center">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server"
                                            ControlToValidate="Password" ErrorMessage="Password is required."
                                            ToolTip="Password is required." ValidationGroup="Login">*
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="&nbsp;Remember me next time." />
                                </div>
                                <div class="form-group">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </div>
                            </div>
                            <div class="card-footer">
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In"
                                    ValidationGroup="Login" CssClass="btn btn-primary btn-lg" />
                                <asp:HyperLink runat="server" NavigateUrl="HomeGUI.aspx" CssClass="btn btn-danger btn-lg" Text="Cancel">
                                </asp:HyperLink>
                                <hr class="my-3">
                                <asp:Label runat="server" CssClass="text-center">Don't have account?</asp:Label>
                                <asp:HyperLink runat="server" CssClass="text-primary font-weight-bold" NavigateUrl="SignUpGUI.aspx"
                                    Text="Sign Up Now!"></asp:HyperLink>
                            </div>
                        </div>
                    </LayoutTemplate>
                </asp:Login>
            </div>
        </div>
    </div>
</asp:Content>

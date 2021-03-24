<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="SignUpGUI.aspx.cs" Inherits="PRN292_Project.GUI.SignUpGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sign Up | Pet Shop</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row d-flex justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Sign Up Now!</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="First Name Required!" ControlToValidate="txtFirstName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col">
                                    <asp:Label ID="LastName" runat="server" Text="Last Name:"></asp:Label>
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Last Name Required!" ControlToValidate="txtLastName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="lblUserName" runat="server" Text="Username:"></asp:Label>
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="User Name Required!" ControlToValidate="txtUserName" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Incorrect Format!" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblPhone" runat="server" Text="Phone Number:"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone Number Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Address Required!" ControlToValidate="txtAddress" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblProvince" runat="server" Text="State / Province:"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtProvince" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="State/Province Required!" ControlToValidate="txtProvince" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ErrorMessage="City Required!" ControlToValidate="txtCity" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblCountry" runat="server" Text="Country:"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtCountry" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCountry" ErrorMessage="Country Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn btn-primary btn-lg" />
                        <asp:HyperLink runat="server" NavigateUrl="HomeGUI.aspx" CssClass="btn btn-danger btn-lg" Text="Cancel"></asp:HyperLink>
                        <hr class="my-3">
                        <asp:Label runat="server" CssClass="text-center">Already Member?</asp:Label>
                        <asp:HyperLink runat="server" CssClass="text-primary font-weight-bold" NavigateUrl="SignInGUI.aspx" Text="Sign In Now!"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

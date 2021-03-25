<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="ContactGUI.aspx.cs" Inherits="PRN292_Project.GUI.ContactGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact | Pet Store</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3>Contact Us!</h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label runat="server" Text="First Name:*"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtFirstName" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col">
                                    <asp:Label runat="server" Text="Last Name:*"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <asp:Label runat="server" Text="Email:*"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" SetFocusOnError="True" ErrorMessage="Email Required!"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator runat="server" ID="EmailFormRequired" ControlToValidate="txtEmail" SetFocusOnError="True" ErrorMessage="Incorrect Email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col">
                                    <asp:Label runat="server" Text="Phone Number:"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Title:*"></asp:Label>
                            <asp:TextBox runat="server" ID="txtTitle" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitle" ErrorMessage="Title Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Content:*"></asp:Label>
                            <asp:TextBox runat="server" ID="txtContent" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtContent" ErrorMessage="Content Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button runat="server" ID="btnSend" CssClass="btn btn-primary" Text="Send" CausesValidation="True" />
                        <asp:Button runat="server" ID="btnCancel" CssClass="btn btn-danger" Text="Cancel" CausesValidation="False" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

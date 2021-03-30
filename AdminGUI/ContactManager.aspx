<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="ContactManager.aspx.cs" Inherits="PRN292_Project.AdminGUI.ContactManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Manager | Admin Control Panel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="tblContact" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="0" DataSourceID="ContactDataSource" EnableModelValidation="True" GridLines="None" CssClass="table table-hover" EnableTheming="False" EnableViewState="False" PageSize="5" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="ID" />
                        <asp:BoundField HeaderText="First Name" DataField="FirstName" />
                        <asp:BoundField HeaderText="Last Name" DataField="LastName" />
                        <asp:BoundField HeaderText="Email" DataField="Email" />
                        <asp:BoundField HeaderText="Phone Number" DataField="PhoneNumber" />
                        <asp:BoundField HeaderText="Title" DataField="Title" />
                        <asp:BoundField HeaderText="Content" DataField="Content" />
                        <asp:CheckBoxField HeaderText="Read" DataField="IsRead" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Functions" ButtonType="Button" />
                    </Columns>
                    <PagerSettings Mode="Numeric" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ContactDataSource" runat="server" DataObjectTypeName="PRN292_Project.DAL.Contact" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetDataTable" TypeName="PRN292_Project.DAL.ContactDAO" UpdateMethod="Update"></asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>

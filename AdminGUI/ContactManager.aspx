<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="ContactManager.aspx.cs" Inherits="PRN292_Project.AdminGUI.ContactManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Manager | Admin Control Panel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="tblContact" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="0" DataSourceID="ContactDataSource" EnableModelValidation="True" GridLines="None" CssClass="table table-hover" EnableTheming="False" EnableViewState="False" PageSize="5" AutoGenerateColumns="false" DataKeyNames="ID">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="ID" ReadOnly="True" />
                        <asp:BoundField HeaderText="First Name" DataField="FirstName" ReadOnly="True" />
                        <asp:BoundField HeaderText="Last Name" DataField="LastName" ReadOnly="True" />
                        <asp:BoundField HeaderText="Email" DataField="Email" ReadOnly="True"/>
                        <asp:BoundField HeaderText="Phone Number" DataField="PhoneNumber" ReadOnly="True"/>
                        <asp:BoundField HeaderText="Title" DataField="Title" ReadOnly="True" />
                        <asp:BoundField HeaderText="Content" DataField="Content" ReadOnly="True" />
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

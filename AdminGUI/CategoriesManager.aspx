<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="CategoriesManager.aspx.cs" Inherits="PRN292_Project.AdminGUI.ProductCategoriesManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <h3>List Of Categories:</h3>
                <asp:GridView ID="tblCategories" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="0" DataSourceID="CategoriesDataSource" EnableModelValidation="True" GridLines="None" CssClass="table table-hover" EnableTheming="False" EnableViewState="False" PageSize="5" AutoGenerateColumns="false" DataKeyNames="Id">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="ID" ReadOnly="True" />
                        <asp:BoundField HeaderText="Category" DataField="Name" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Functions" ButtonType="Button" />
                    </Columns>
                    <PagerSettings Mode="Numeric" />
                </asp:GridView>
                <br />
                <asp:ObjectDataSource runat="server" ID="CategoriesDataSource" DataObjectTypeName="PRN292_Project.DTL.Category" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="GetDataTable" TypeName="PRN292_Project.DAL.CategoryDAO" UpdateMethod="Update"></asp:ObjectDataSource>
                <div class="form-add">
                    <h3>Add Category</h3>
                    <asp:Label runat="server" Text="Name:"></asp:Label>
                    <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:Button runat="server" CausesValidation="True" ID="btnAdd" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

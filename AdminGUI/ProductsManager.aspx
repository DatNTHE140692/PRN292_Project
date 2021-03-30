<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="ProductsManager.aspx.cs" Inherits="PRN292_Project.AdminGUI.ProductManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Products Manager | Admin Control Panel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <asp:Label runat="server" Text="Category:"></asp:Label>&nbsp;
                <asp:DropDownList ID="cbCategory" runat="server" AutoPostBack="True" DataSourceID="dsCategory" DataTextField="Name" DataValueField="ID" OnSelectedIndexChanged="cbCategory_SelectedIndexChanged"></asp:DropDownList>
                <asp:ObjectDataSource runat="server" ID="dsCategory" SelectMethod="GetDataTableAll" TypeName="PRN292_Project.DAL.CategoryDAO"></asp:ObjectDataSource>
                <br /><br />
                <asp:GridView ID="tblProducts" runat="server" CssClass="w-100 table table-striped" CellPadding="0" EnableModelValidation="True" GridLines="None" PageSize="5" DataKeyNames="ID" AllowPaging="True" OnPageIndexChanging="tblProducts_PageIndexChanging" OnRowDeleting="tblProducts_RowDeleting" OnRowEditing="tblProducts_RowEditing">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Functions" ButtonType="Button"/>
                    </Columns>
                    <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" NextPageText="" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

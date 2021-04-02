<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="ProductsManager.aspx.cs" Inherits="PRN292_Project.AdminGUI.ProductManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Products Manager | Admin Control Panel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row py-3">
            <div class="col-md-6">
                <asp:Label runat="server" Text="Category:"></asp:Label>&nbsp;
                <asp:DropDownList ID="cbCategory" runat="server" AutoPostBack="True" DataSourceID="dsCategory" DataTextField="Name" DataValueField="ID" OnSelectedIndexChanged="cbCategory_SelectedIndexChanged"></asp:DropDownList>
                <asp:ObjectDataSource runat="server" ID="dsCategory" SelectMethod="GetDataTableAll" TypeName="PRN292_Project.DAL.CategoryDAO"></asp:ObjectDataSource>
            </div>
            <div class="col-md-6 text-right">
                <asp:Button runat="server" Text="Edit Selected" CssClass="btn btn-danger" ID="btnEdit" OnClick="btnEdit_OnClick" />
                <asp:HyperLink runat="server" CssClass="btn btn-success" NavigateUrl="AddProductGUI.aspx">Add Product</asp:HyperLink>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="tblProducts" runat="server" CssClass="w-100 table table-striped" CellPadding="0" EnableModelValidation="True" GridLines="None" PageSize="5" DataKeyNames="ID" AllowPaging="True" OnPageIndexChanging="tblProducts_PageIndexChanging" OnRowDeleting="tblProducts_RowDeleting" OnRowEditing="tblProducts_RowEditing" AutoGenerateColumns="False" OnRowCancelingEdit="tblProducts_RowCancelingEdit" OnRowUpdating="tblProducts_RowUpdating" OnSelectedIndexChanged="tblProducts_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="ID" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Name">  
                            <ItemTemplate>     
                                <%#Eval("Name")%>     
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Price">  
                            <ItemTemplate>     
                                <%#Eval("Price")%>     
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtPrice" runat="server" Text='<%#Eval("Price") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Stock">  
                            <ItemTemplate>     
                                <asp:CheckBox runat="server" Checked='<%#Eval("Stock") %>' Enabled="False"></asp:CheckBox> 
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:CheckBox ID="ckbStock" runat="server" Checked='<%#Eval("Stock") %>'></asp:CheckBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>  
                        <asp:BoundField HeaderText="Category" DataField="Category" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Thumbnail">  
                            <ItemTemplate>     
                                <%#Eval("Thumbnail")%>     
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtThumbnail" runat="server" Text='<%#Eval("Thumbnail") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ImageUrl='<%# Eval("Thumbnail") %>' Width="150px" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" HeaderText="Functions" ButtonType="Button" />
                    </Columns>
                    <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" />
                    <SelectedRowStyle BackColor="Yellow" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

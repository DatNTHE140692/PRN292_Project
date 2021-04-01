<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="OrdersManager.aspx.cs" Inherits="PRN292_Project.AdminGUI.OrdersManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Orders Manager | Admin Control Panel</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid py-3">
        <div class="row">
            <div class="col-md-12">
                <asp:Label Text="List Of Orders:" Font-Bold="True" runat="server"></asp:Label>
                <br /><br />
                <asp:GridView runat="server" ID="tblOrders" CssClass="w-100 table table-striped" AllowPaging="True" DataSourceID="dsOrders" EnableModelValidation="True" AutoGenerateColumns="False" AllowSorting="True" GridLines="None" PageSize="5" DataKeyNames="ID" OnSelectedIndexChanged="tblOrders_SelectedIndexChanged" OnSelectedIndexChanging="tblOrders_SelectedIndexChanging">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="id" ReadOnly="True"/>
                        <asp:BoundField HeaderText="Order Date" DataField="orderDate" DataFormatString="{0:dd/MM/yyyy}" ReadOnly="True"/>
                        <asp:BoundField HeaderText="First Name" DataField="firstName" ReadOnly="True" />
                        <asp:BoundField HeaderText="Last Name" DataField="lastName" ReadOnly="True" />
                        <asp:BoundField HeaderText="Email" DataField="email" ReadOnly="True"/>
                        <asp:BoundField HeaderText="Phone Number" DataField="phoneNumber" ReadOnly="True"/>
                        <asp:BoundField HeaderText="Address" DataField="address" ReadOnly="True"/>
                        <asp:BoundField HeaderText="Province" DataField="province" ReadOnly="True"/>
                        <asp:BoundField HeaderText="City" DataField="city" ReadOnly="True"/>
                        <asp:BoundField HeaderText="Country" DataField="country" ReadOnly="True"/>
                        <asp:BoundField HeaderText="Total" DataField="total" ReadOnly="True"/>
                        <asp:CheckBoxField HeaderText="Approve" DataField="isApproved"/>
                        <asp:CheckBoxField HeaderText="Processing" DataField="isProcessing"/>
                        <asp:CheckBoxField HeaderText="Completed" DataField="isCompleted"/>
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" ShowEditButton="True" ShowDeleteButton="True" HeaderText="Functions"/>
                    </Columns>
                    <SelectedRowStyle BackColor="Yellow" />
                </asp:GridView>
                <asp:ObjectDataSource ID="dsOrders" runat="server" DataObjectTypeName="PRN292_Project.DTL.Order" DeleteMethod="Delete" SelectMethod="GetDataTable" TypeName="PRN292_Project.DAL.OrderDAO" UpdateMethod="Update"></asp:ObjectDataSource>
            </div>
            <div class="col-md-12">
                <asp:Label Text="Order Detail:" Font-Bold="True" runat="server" Visible="False" ID="lblOrderDetail"></asp:Label>
                <br /><br />
                <asp:GridView runat="server" ID="tblOrderDetails" EnableModelValidation="True" CssClass="table table-striped" GridLines="None"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

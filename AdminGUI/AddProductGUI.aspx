<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="AddProductGUI.aspx.cs" Inherits="PRN292_Project.AdminGUI.AddProductGUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 130px;
        }
        .auto-style3 {
            width: 224px;
        }
        .auto-style4 {
            width: 130px;
            height: 26px;
        }
        .auto-style5 {
            width: 224px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 130px;
            height: 30px;
        }
        .auto-style8 {
            width: 224px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#FF9933" Text="CREATE PRODUCT"></asp:Label>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtName" runat="server" Width="217px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Price:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPrice" runat="server" Width="215px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Overview:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtOverview" runat="server" Width="217px"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">Description:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="215px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
       
        <tr>
            <td class="auto-style2">Category:</td>
            <td class="auto-style3">
                <asp:DropDownList AutoPostBack="true" ID="ddlCategory" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Thumbnail:</td>
            <td class="auto-style8">
                <asp:FileUpload ID="fuThumnail" runat="server" Height="28px" Width="218px" />
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style2">Second Image</td>
            <td class="auto-style3">
                <asp:FileUpload ID="fuSecond" runat="server" Width="218px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Third image</td>
            <td class="auto-style3">
                <asp:FileUpload ID="fuThird" runat="server" Width="217px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Fourth Image</td>
            <td class="auto-style3">
                <asp:FileUpload ID="fuFourth" runat="server" Width="219px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminGUI/AdminGUI.Master" AutoEventWireup="true" CodeBehind="AddProductGUI.aspx.cs" Inherits="PRN292_Project.AdminGUI.AddProductGUI" ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Product</h4>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Label runat="server" Text="Name:" Font-Bold="True"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Price:" Font-Bold="True"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPrice" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Category:" Font-Bold="True"></asp:Label>
                            <asp:DropDownList runat="server" ID="cbCategories" CssClass="form-group" DataSourceID="dsCategories" DataTextField="name" DataValueField="id"/>
                            <asp:ObjectDataSource runat="server" ID="dsCategories" SelectMethod="GetDataTable" TypeName="PRN292_Project.DAL.CategoryDAO"></asp:ObjectDataSource>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Overview:" Font-Bold="True"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOverview" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="txtOverview" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Description:" Font-Bold="True"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDescription" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="In Stock:" Font-Bold="True"></asp:Label>
                            <asp:CheckBox runat="server" CssClass="form-control" ID="ckbStock" Text="&nbsp;Stock"/>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Thumbnail:" Font-Bold="True"></asp:Label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="fuThumbnail" SetFocusOnError="True" ErrorMessage="*" ValidationGroup="thumb"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="txtThumbnail" ReadOnly="True" ValidationGroup="thumb" CssClass="form-control"></asp:TextBox>
                            <br/>
                            <asp:FileUpload ID="fuThumbnail" runat="server" />
                            <asp:Button runat="server" Text="Upload" CssClass="btn btn-success" CausesValidation="True" ValidationGroup="thumb" ID="btnThumbUpload" OnClick="btnThumbUpload_Click"/>
                            <br />
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" Text="Slider Images:" Font-Bold="True"></asp:Label>
                            <br /><br />
                            <asp:Label runat="server" Text="Image 1:" Font-Bold="True"></asp:Label>
                            <asp:TextBox runat="server" ID="txtImage1" CssClass="form-control"></asp:TextBox>
                            <br/>
                            <asp:FileUpload ID="ImageUploader1" runat="server" />
                            <br /><br />
                            <asp:Label runat="server" Text="Image 2:" Font-Bold="True"></asp:Label>
                            <asp:TextBox runat="server" ID="txtImage2" CssClass="form-control"></asp:TextBox>
                            <br/>
                            <asp:FileUpload ID="ImageUploader2" runat="server" />
                            <br /><br />
                            <asp:Label runat="server" Text="Image 3:" Font-Bold="True"></asp:Label>
                            <asp:TextBox runat="server" ID="txtImage3" CssClass="form-control"></asp:TextBox>
                            <br />
                            <asp:FileUpload ID="ImageUploader3" runat="server" />
                            <br /><br />
                            <asp:Button runat="server" CssClass="btn btn-success" ID="btnUpload" Text="Upload" OnClick="btnUpload_Click"/>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button runat="server" CssClass="btn btn-success" CausesValidation="True" Text="Save" ID="btnSave" OnClick="btnSave_Click"/>
                        <asp:HyperLink runat="server" CssClass="btn btn-danger" NavigateUrl="ProductsManager.aspx" Text="Cancel"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

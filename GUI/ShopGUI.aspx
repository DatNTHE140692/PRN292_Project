<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="ShopGUI.aspx.cs" Inherits="PRN292_Project.GUI.ShopGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Shop | Pet Store</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-3">
        <div class="row">
            <div class="col-md-3">
                <div class="search">
                    <ul class="list-group mb-3">
                        <li class="list-group-item active">
                            <asp:Label runat="server" Text="Search" CssClass="text-light"></asp:Label>
                        </li>
                        <li class="list-group-item">
                            <div class="d-flex flex-row form-group">
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtSearch"></asp:TextBox>
                                <asp:Button runat="server" ID="btnSearch" Text="Search" CssClass="ml-1 btn btn-success" />
                            </div>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSearch" ErrorMessage="Enter Keyword!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </li>
                    </ul>
                </div>
                <div class="product-categories">
                    <ul class="list-group">
                        <li class="list-group-item active">Product Categories</li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Cras justo odio <span class="badge badge-primary badge-pill">14</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Dapibus ac facilisis in <span class="badge badge-primary badge-pill">2</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Morbi leo risus <span class="badge badge-primary badge-pill">1</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Morbi leo risus <span class="badge badge-primary badge-pill">1</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Morbi leo risus <span class="badge badge-primary badge-pill">1</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body"></div>
                            <div class="card-footer"></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body"></div>
                            <div class="card-footer"></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body"></div>
                            <div class="card-footer"></div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body"></div>
                            <div class="card-footer"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

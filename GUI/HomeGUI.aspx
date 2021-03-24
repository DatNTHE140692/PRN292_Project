<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="HomeGUI.aspx.cs" Inherits="PRN292_Project.HomeGUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home | Pet Shop</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container pt-2 pb-2">
        <div class="row">
            <div class="col-md-12"><h1>Home</h1></div>
            <div class="col-md-3">
                <ul class="list-group">
                    <li class="list-group-item active">Product Categories</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Morbi leo risus</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Morbi leo risus</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                </ul>
            </div>
            <div class="col-md-9">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/pet-shop-sai-gon-1.jpg" CssClass="d-block w-100" AlternateText="First slide" />
                        </div>
                        <div class="carousel-item">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/pet-shop-sai-gon-2.jpg" CssClass="d-block w-100" AlternateText="Second slide" />
                        </div>
                        <div class="carousel-item">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/pet-shop-sai-gon-3.jpg" CssClass="d-block w-100" AlternateText="Third slide" />
                        </div>
                        <div class="carousel-item">
                            <asp:Image runat="server" ImageUrl="../ASSETS/IMG/pet-shop-sai-gon-4.jpg" CssClass="d-block w-100" AlternateText="Fourth slide" />
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <asp:Image runat="server" CssClass="w-100" ImageUrl="../ASSETS/IMG/thuc-an-cho-cho-banner.jpg"/>
            </div>
            <div class="col-md-3">
                <asp:Image runat="server" CssClass="w-100" ImageUrl="../ASSETS/IMG/thuc-an-cho-cho-banner.jpg"/>
            </div>
            <div class="col-md-3">
                <asp:Image runat="server" CssClass="w-100" ImageUrl="../ASSETS/IMG/thuc-an-cho-cho-banner.jpg"/>
            </div>
            <div class="col-md-3">
                <asp:Image runat="server" CssClass="w-100" ImageUrl="../ASSETS/IMG/thuc-an-cho-cho-banner.jpg"/>
            </div>
        </div>
    </div>
</asp:Content>

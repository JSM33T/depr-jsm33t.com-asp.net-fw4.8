<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jsmtcom.Pages.Music.Albums.Recuerdos1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageStyles" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5 mt-5 mb-lg-4 mb-xl-5">
        <!-- Breadcrumb-->
        <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-2 breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Shop catalog</li>
            </ol>
        </nav>
        <!-- Banner-->
        <div class="ignore-dark-mode rounded-1 overflow-hidden mb-5" style="background-color: #e3e5e9;">
            <div class="row align-items-center g-0">
                <div class="col-md-6 offset-xl-1 text-center text-md-start">
                    <div class="py-4 px-4 px-sm-5 pe-md-0 ps-xl-4">
                        <p class="fs-xs text-uppercase pt-3 pt-md-0 mb-3 mb-lg-4">Best selling</p>
                        <h2 class="h1 pb-2 pb-xl-3">Cozy corner for the living room at a <span class="text-primary">discount up to 40%</span></h2>
                        <a class="btn btn-sm btn-outline-dark ignore-dark-mode" href="#">Explore</a>
                    </div>
                </div>
                <div class="col-md-6 col-xl-5 d-flex justify-content-end">
                    <img src="assets/img/shop/banner.jpg" width="491" alt="Banner" />
                </div>
            </div>
        </div>
        <!-- Page title-->
        <div class="row pt-xl-3 mt-n1 mt-sm-0">
            <div class="col-lg-9 pt-lg-3">
                <h1 class="pb-2 pb-sm-3">Home decoration</h1>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" runat="server">
</asp:Content>

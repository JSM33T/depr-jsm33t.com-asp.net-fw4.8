<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jsmtcom.Pages.Apps.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageStyles" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-secondary py-5">
        <div class="container pt-5 pb-lg-2 pb-xl-4 py-xxl-5">
            <!-- Breadcrumb-->
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="index.html">Apps</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Contacts v.1</li>
                </ol>
            </nav>
            <!-- Page title-->
            <h1 class="display-2">Contacts</h1>
            <p class="fs-lg pb-4 mb-2 mb-sm-3">Get in touch with us by completing the below form or call us now</p>
            <!-- Details cards-->
            <div class="row row-cols-1 row-cols-sm-2 row-cols-xl-4 g-4 pb-2 pb-sm-4 pb-lg-5">
                <!-- Address-->
                <div class="col">
                    <div class="card border-0 h-100">
                        <div class="card-body">
                            <h4 class="card-title mb-4">Address</h4>
                            <p class="fs-lg fw-medium pb-3 mb-3">514 Magnolia St. Orlando, FL 32806</p>
                            <a class="btn btn-sm btn-outline-primary" href="#"><i class="ai-map-pin me-1"></i>Get directions</a>
                        </div>
                    </div>
                </div>
                <!-- Phone-->
                <div class="col">
                    <div class="card border-0 h-100">
                        <div class="card-body">
                            <h4 class="card-title mb-4">Phone</h4>
                            <ul class="list-unstyled mb-0">
                                <li class="pb-1 mb-2"><span class="d-block fs-sm text-muted mb-1">Main office</span><a class="nav-link fs-lg p-0" href="tel:+178632256033">+1 (786) 322 560 33</a></li>
                                <li><span class="d-block fs-sm text-muted mb-1">Reception room</span><a class="nav-link fs-lg p-0" href="tel:+178630056044">+1 (786) 300 560 44</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Schedule-->
                <div class="col">
                    <div class="card border-0 h-100">
                        <div class="card-body">
                            <h4 class="card-title mb-4">Schedule</h4>
                            <ul class="list-unstyled mb-0">
                                <li class="pb-1 mb-2"><span class="d-block fs-sm text-muted mb-1">Mon - Thu</span>
                                    <div class="d-flex align-items-center"><span class="text-nav fs-lg fw-medium">10:00</span><span class="border-top mx-4" style="width: 36px; height: 1px;"></span><span class="text-nav fs-lg fw-medium">22:00</span></div>
                                </li>
                                <li><span class="d-block fs-sm text-muted mb-1">Fri - Sat</span>
                                    <div class="d-flex align-items-center"><span class="text-nav fs-lg fw-medium">10:00</span><span class="border-top mx-4" style="width: 36px; height: 1px;"></span><span class="text-nav fs-lg fw-medium">20:00</span></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Email-->
                <div class="col">
                    <div class="card border-0 h-100">
                        <div class="card-body">
                            <h4 class="card-title mb-4">Email</h4>
                            <ul class="list-unstyled mb-0">
                                <li class="pb-1 mb-2"><span class="d-block fs-sm text-muted mb-1">Main office</span><a class="nav-link fs-lg p-0" href="mailto:office@example.com">office@example.com</a></li>
                                <li><span class="d-block fs-sm text-muted mb-1">Reception room</span><a class="nav-link fs-lg p-0" href="mailto:reception@example.com">reception@example.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="height: 250px;"></div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" runat="server">
</asp:Content>

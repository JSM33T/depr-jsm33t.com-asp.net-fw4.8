<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jsmtcom.Blogs.Default" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageStyles" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page content-->
    <div class="container pt-5 pb-lg-5 pb-md-4 pb-2 my-5">
        <!-- Breadcrumb-->
            <button class="btn-primary" type="button" onclick="haha()" id="bbbb">hey there press me</button>
        <nav aria-label="breadcrumb">
            <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Blog</li>
            </ol>
        </nav>
        <div class="row mb-md-2 mb-xl-4">
            <!-- Blog posts-->
            <div class="col-lg-9 col-xl-8 pe-lg-4 pe-xl-0">
                <h1 class="pb-3 pb-lg-4">The Blosss g</h1>
                <asp:UpdatePanel ID="haha" ClientIDMode="Static" runat="server">
                    <ContentTemplate>
                        <button type="button" id="falana" runat="server" onserverclick="LoadB_click">here</button>
                <div class="masonry-grid mb-2 mb-md-4 pb-lg-3" data-columns="2">
                    <!-- Post-->
                  
                            <asp:PlaceHolder ID="blogholder" runat="server" />
                     

                </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <!-- Pagination-->
                <div class="row gy-3 align-items-center">
                    <div class="col col-md-4 col-6 order-md-1 order-1">
                        <div class="d-flex align-items-center">
                            <span class="text-muted fs-sm">Show</span>
                            <select class="form-select form-select-flush w-auto">
                                <option value="6">6</option>
                                <option value="9">9</option>
                                <option value="12">12</option>
                                <option value="24">24</option>
                            </select>
                        </div>
                    </div>
                    <div class="col col-md-4 col-12 order-md-2 order-3 text-center">
                        <button class="btn btn-primary w-md-auto w-100" type="button">Load more posts</button>
                    </div>
                    <div class="col col-md-4 col-6 order-md-3 order-2">
                        <nav aria-label="Page navigation">
                            <ul class="pagination pagination-sm justify-content-end">
                                <li class="page-item active" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>


            <!-- Sidebar (offcanvas on sreens < 992px)-->
            <aside class="col-lg-3 offset-xl-1">
                <div class="offcanvas-lg offcanvas-end" id="sidebarBlog">
                    <div class="offcanvas-header">
                        <h4 class="offcanvas-title">Sidebar</h4>
                        <button class="btn-close ms-auto" type="button" data-bs-dismiss="offcanvas" data-bs-target="#sidebarBlog"></button>
                    </div>
                    <div class="offcanvas-body">
                        <!-- Search box-->
                        <div class="position-relative mb-4 mb-lg-5">
                            <i class="ai-search position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                            <input class="form-control ps-5" type="search" placeholder="Enter keyword" />
                        </div>
                        <!-- Category links-->
                        <h4 class="pt-1 pt-lg-0 mt-lg-n2">Categories:</h4>
                        <ul class="nav flex-column mb-lg-5 mb-4">
                            <%--<asp:Literal ID="categories" runat="server" />--%>
                            <li class="mb-2"><a class="nav-link d-flex p-0 active" href="#">All categories<span class="fs-sm text-muted ms-2">(110)</span></a></li>
                            <li class="mb-2"><a class="nav-link d-flex p-0" href="#">Inspiration<span class="fs-sm text-muted ms-2">(34)</span></a></li>
                            <li class="mb-2"><a class="nav-link d-flex p-0" href="#">Brand strategy<span class="fs-sm text-muted ms-2">(8)</span></a></li>
                            <li class="mb-2"><a class="nav-link d-flex p-0" href="#">Advertisement<span class="fs-sm text-muted ms-2">(45)</span></a></li>
                            <li class="mb-2"><a class="nav-link d-flex p-0" href="#">Ecommerce<span class="fs-sm text-muted ms-2">(17)</span></a></li>
                            <li><a class="nav-link d-flex p-0" href="#">Travel &amp; Vacation<span class="fs-sm text-muted ms-2">(6)</span></a></li>
                        </ul>
                        <!-- Featured posts widget-->
                        <h4 class="pt-3 pt-lg-0 pb-1">Trending posts:</h4>
                        <div class="mb-lg-5 mb-4">
                            <article class="position-relative d-flex align-items-center mb-4">
                                <img class="rounded" src="/Content/img/blog/sidebar/01.jpg" width="92" alt="Post image" />
                                <div class="ps-3">
                                    <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v1.html">Instagram trends that will definitely work</a></h4>
                                    <span class="fs-sm text-muted">13 hours ago</span>
                                </div>
                            </article>
                            <article class="position-relative d-flex align-items-center mb-4">
                                <img class="rounded" src="/Content/img/blog/sidebar/02.jpg" width="92" alt="Post image" />
                                <div class="ps-3">
                                    <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v2.html">A session with a psychologist</a></h4>
                                    <span class="fs-sm text-muted">May 12, 2022</span>
                                </div>
                            </article>
                            <article class="position-relative d-flex align-items-center">
                                <img class="rounded" src="/Content/img/blog/sidebar/03.jpg" width="92" alt="Post image" />
                                <div class="ps-3">
                                    <h4 class="h6 mb-2"><a class="stretched-link" href="blog-single-v3.html">How to look for inspiration for new goals</a></h4>
                                    <span class="fs-sm text-muted">June 10, 2022</span>
                                </div>
                            </article>
                        </div>
                        <!-- Social buttons-->
                        <h4 class="pt-3 pt-lg-0 pb-1">Join us:</h4>
                        <div class="mt-n3 ms-n3 mb-lg-5 mb-4 pb-3 pb-lg-0"><a class="btn btn-secondary btn-icon btn-sm btn-instagram rounded-circle mt-3 ms-3" href="#"><i class="ai-instagram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-facebook rounded-circle mt-3 ms-3" href="#"><i class="ai-facebook"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-telegram rounded-circle mt-3 ms-3" href="#"><i class="ai-telegram"></i></a><a class="btn btn-secondary btn-icon btn-sm btn-twitter rounded-circle mt-3 ms-3" href="#"><i class="ai-twitter"></i></a></div>
                        <!-- Banner-->
                        <div class="position-relative mb-3">
                            <div class="ignore-dark-mode position-absolute w-100 text-center top-0 start-50 translate-middle-x pt-4" style="max-width: 15rem;">
                                <h3 class="h2 pt-3 mb-0">Your banner here!</h3>
                            </div>
                            <img class="rounded-5" src="/Content/img/blog/sidebar/banner.jpg" alt="Banner" />
                        </div>
                    </div>
                </div>
            </aside>
        </div>
    </div>
    <!-- Sidebar toggle button-->
    <button class="d-lg-none btn btn-sm fs-sm btn-primary w-100 rounded-0 fixed-bottom" data-bs-toggle="offcanvas" type="button" data-bs-target="#sidebarBlog"><i class="ai-layout-column me-2"></i>Sidebar</button>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" runat="server">
    <script>
        function haha() {
            
            var button = document.getElementById("MainContent_falana"); button.click();
        }
    </script>
    <script src="/Content/library/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="/Content/library/shufflejs/dist/shuffle.min.js"></script>
</asp:Content>

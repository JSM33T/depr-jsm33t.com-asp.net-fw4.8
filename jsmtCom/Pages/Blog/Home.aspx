<%@ Page  Language="C#" MasterPageFile="~/Pages/Blog/BlogNav.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="jsmtCom.Pages.Blog.Home" %>
 
<asp:Content ID="BlgContent" ContentPlaceHolderID="BlogContent" runat="server">

    <div class="col-lg-9 col-xl-8 pe-lg-4 pe-xl-0">
        <h1 class="pb-3 pb-lg-4">Blog grid with sidebar</h1>
        <div class="masonry-grid mb-2 mb-md-4 pb-lg-3 shuffle" data-columns="2" style="position: relative; height: 1382.13px; transition: height 250ms cubic-bezier(0.4, 0, 0.2, 1) 0s;">
            <!-- Post-->
            <article class="masonry-grid-item shuffle-item shuffle-item--visible" style="position: absolute; top: 0px; visibility: visible; will-change: transform; left: 0px; opacity: 1; transition-duration: 250ms; transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1); transition-property: transform, opacity;">
                <div class="card border-0 bg-secondary">
                    <div class="card-body pb-4">
                        <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">9 hours ago</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Brand strategy</a></div>
                        <h3 class="h4 card-title"><a href="blog-single-v1.html">Business strategy for a brand of vintage bags</a></h3>
                        <p class="card-text">Pharetra in morbi quis is massa maecenas arcu vulputate pulvinar elit non nullage a, duis tortor mi massa ipsum in eu eu eget libero pulvinar elit vulputate...</p>
                    </div>
                    <div class="card-footer pt-3">
                        <a class="d-flex align-items-center text-decoration-none pb-2" href="#">
                            <img class="rounded-circle" src="/Content/img/avatar/05.jpg" alt="Post author" width="48">
                            <h6 class="ps-3 mb-0">Darlene Robertson</h6>
                        </a>
                    </div>
                </div>
            </article>
            <!-- Post-->
            <article class="masonry-grid-item shuffle-item shuffle-item--visible" style="position: absolute; top: 0px; visibility: visible; will-change: transform; left: 0px; opacity: 1; transform: translate(446px) scale(1); transition-duration: 250ms; transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1); transition-property: transform, opacity;">
                <div class="card border-0 bg-secondary">
                    <a href="blog-single-v2.html">
                        <img class="card-img-top" src="/Content/img/blog/grid/01.jpg" alt="Post image"></a>
                    <div class="card-body pb-4">
                        <div class="d-flex align-items-center mb-4 mt-n1"><span class="fs-sm text-muted">12 hours ago</span><span class="fs-xs opacity-20 mx-3">|</span><a class="badge text-nav fs-xs border" href="#">Books</a></div>
                        <h3 class="h4 card-title"><a href="blog-single-v2.html">Top books for inspiration</a></h3>
                        <p class="card-text">Vulputate auctor lacus imperdiet facilisi tristique nisl pulvinar porta diam duis odio</p>
                    </div>
                    <div class="card-footer pt-3">
                        <a class="d-flex align-items-center text-decoration-none pb-2" href="#">
                            <img class="rounded-circle" src="/Content/img/avatar/06.jpg" alt="Post author" width="48">
                            <h6 class="ps-3 mb-0">Jenny Wilson</h6>
                        </a>
                    </div>
                </div>
            </article>
            <!-- Post-->
           
        </div>
        <!-- Pagination-->
        <div class="row gy-3 align-items-center">
            <div class="col  col-12 order-md-2 order-3 text-center">
                <button class="btn btn-primary w-md-auto w-100" type="button">Load more posts</button>
            </div>
        
        </div>
    </div>
</asp:Content>

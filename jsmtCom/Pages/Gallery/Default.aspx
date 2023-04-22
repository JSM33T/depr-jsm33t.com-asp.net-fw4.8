<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MetaDescription="gallery desc" MetaKeywords="gallery, jsm33t"   Inherits="jsmtcom.Pages.Gallery.Default" EnableViewState="false" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageStyles" runat="server">
    <link rel="stylesheet" media="screen" href="/Content/library/swiper/swiper-bundle.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div class="jarallax bg-dark min-vh-100 py-5" data-jarallax data-type="scroll-opacity" data-speed="0.7">
            <div class="position-absolute top-0 start-0 w-100 h-100 bg-black opacity-40"></div>
            <div class="jarallax-img" style="background-image: url(/Content/images/gallery/header.jpg);"></div>
            <div class="container position-relative zindex-5 py-sm-4 py-lg-5 mt-4">
                <!-- Text + button-->
                <div class="row pt-lg-2 py-xl-4 py-xxl-5 mb-md-4 mb-lg-5">
                    <div class="col-md-10 col-lg-9 col-xl-8 col-xxl-7 pt-5 mb-5">
                        <h1 class="display-2 text-light text-uppercase pb-sm-2 pb-md-3">This is The gallery</h1>
                        <p class="text-light opacity-70 pb-3 pb-md-4 mb-3" style="max-width: 520px;">On the site you will find all the wonderful decor items from photo frames to tablecloths for the dining table</p>
                        <a class="btn btn-outline-light" href="shop-catalog.html">Explore the catalog</a>
                    </div>
                </div>
                <%--     <div class="d-flex align-items-center justify-content-between mb-3">
                    <div class="fw-medium text-light text-uppercase">Most Popular</div>
                    <!-- Slider prev/next buttons-->
                    <div class="d-flex">
                        <button class="btn btn-prev btn-icon btn-sm btn-outline-light rounded-circle ms-3" type="button" id="popular-prev"><i class="ai-arrow-left"></i></button>
                        <button class="btn btn-next btn-icon btn-sm btn-outline-light rounded-circle ms-3" type="button" id="popular-next"><i class="ai-arrow-right"></i></button>
                    </div>
                </div>--%>
                <!-- Slider (popular items)-->
            </div>
        </div>
    </section>
    <!-- About-->
    <section class="container py-5 my-lg-3 my-xl-4 my-xxl-5">
        <div class="row pt-2 py-md-4">
            <div class="col-lg-10 col-xl-9">
                <p class="lead text-dark pb-md-2 pb-lg-3 mb-2">We do not believe that one style suits everyone. That is why we choose three design directions for the new season. Get inspired by new trends and create an atmosphere of coziness and comfort in your own home. On the site you will find all the wonderful decor items from photo frames to tablecloths for the dining table.</p>
                <a class="btn btn-lg btn-link px-0" href="#">About us<i class="ai-arrow-right ms-2"></i></a>
            </div>
        </div>
    </section>
    <!-- Our projects (Filterable masonry grid)-->
    <section class="container overflow-hidden pb-5 mb-2 mb-lg-3 mb-xl-4 mb-xxl-5">
        <div class="masonry-filterable">
            <div class="row pb-lg-4 mb-2 mb-sm-3">
                <!-- Page title-->
                <div class="col-xxl-3 col-lg-4 text-center text-lg-start">
                    <h1>Albums</h1>
                    <p class="mb-4 mb-lg-0">We will put our industry expertise for creativity to work for your project</p>
                </div>
                <!-- Filters-->
                <div class="col-xxl-9 col-lg-8 d-flex">
                    <ul class="masonry-filters nav nav-pills fs-sm flex-nowrap overflow-auto text-nowrap w-100 mx-auto me-lg-0 pb-3" style="max-width: 456px;">
                        <li class="nav-item mb-0"><a class="nav-link border active" href="#" data-group="all">All</a></li>
                        <li class="nav-item mb-0"><a class="nav-link border" href="#" data-group="mobile">Mobile</a></li>
                        <li class="nav-item mb-0"><a class="nav-link border" href="#" data-group="urbex">Urbex</a></li>
                        <li class="nav-item mb-0"><a class="nav-link border" href="#" data-group="videos">Videos</a></li>

                    </ul>
                </div>
            </div>
            <!-- Grid of portfolio items-->
            <div class="masonry-grid" data-columns="2">
                <!-- Item-->
                <article class="masonry-grid-item pb-5 mb-md-2 mb-lg-4 mb-xl-5" data-groups="[&quot;mobile&quot;]">
                    <div class="zoom-effect position-relative border-bottom pb-3" style="max-width: 512px;">
                        <div class="zoom-effect-wrapper">
                            <div class="zoom-effect-img">
                                <img src="/Content/img/portfolio/grid/07.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="pt-4 mt-lg-2">
                            <h2 class="h4 mb-2"><a class="stretched-link" href="portfolio-single-v2.html">Healthy Yellow</a></h2>
                            <div class="d-flex justify-content-between fs-lg text-muted"><span>mobile, Packaging</span><span>2022</span></div>
                        </div>
                    </div>
                </article>
                <!-- Item-->
                <article class="masonry-grid-item pb-5 mb-md-2 mb-lg-4 mb-xl-5" data-groups="[&quot;urbex&quot;]">
                    <div class="zoom-effect position-relative border-bottom pb-3" style="max-width: 704px;">
                        <div class="zoom-effect-wrapper">
                            <div class="zoom-effect-img">
                                <img src="/Content/img/portfolio/grid/08.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="pt-4 mt-lg-2">
                            <h2 class="h4 mb-2"><a class="stretched-link" href="portfolio-single-v2.html">Sen Jonson</a></h2>
                            <div class="d-flex justify-content-between fs-lg text-muted"><span>urbex design</span><span>2022</span></div>
                        </div>
                    </div>
                </article>
                <!-- Item-->
                <article class="masonry-grid-item pb-5 mb-md-2 mb-lg-4 mb-xl-5" data-groups="[&quot;mobile&quot;]">
                    <div class="zoom-effect position-relative border-bottom pb-3" style="max-width: 467px;">
                        <div class="zoom-effect-wrapper">
                            <div class="zoom-effect-img">
                                <img src="/Content/img/portfolio/grid/09.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="pt-4 mt-lg-2">
                            <h2 class="h4 mb-2"><a class="stretched-link" href="portfolio-single-v2.html">Gradient</a></h2>
                            <div class="d-flex justify-content-between fs-lg text-muted"><span>mobile, Packaging</span><span>2022</span></div>
                        </div>
                    </div>
                </article>
                <!-- Item-->
                <article class="masonry-grid-item pb-5 mb-md-2 mb-lg-4 mb-xl-5" data-groups="[&quot;urbex&quot;]">
                    <div class="zoom-effect position-relative border-bottom ms-auto pb-3" style="max-width: 605px;">
                        <div class="zoom-effect-wrapper">
                            <div class="zoom-effect-img">
                                <img src="/Content/img/portfolio/grid/10.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="pt-4 mt-lg-2">
                            <h2 class="h4 mb-2"><a class="stretched-link" href="portfolio-single-v2.html">D.G.Vent</a></h2>
                            <div class="d-flex justify-content-between fs-lg text-muted"><span>urbex design</span><span>2021</span></div>
                        </div>
                    </div>
                </article>
                <!-- Item-->
                <article class="masonry-grid-item pb-5 mb-md-2 mb-lg-4 mb-xl-5" data-groups="[&quot;urbex&quot;]">
                    <div class="zoom-effect position-relative border-bottom pb-3" style="max-width: 550px;">
                        <div class="zoom-effect-wrapper">
                            <div class="zoom-effect-img">
                                <img src="/Content/img/portfolio/grid/11.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="pt-4 mt-lg-2">
                            <h2 class="h4 mb-2"><a class="stretched-link" href="portfolio-single-v2.html">Doe design</a></h2>
                            <div class="d-flex justify-content-between fs-lg text-muted"><span>mobile, urbex</span><span>2021</span></div>
                        </div>
                    </div>
                </article>
                <!-- Item-->
                <article class="masonry-grid-item pb-5 mb-md-2 mb-lg-4 mb-xl-5" data-groups="[&quot;web&quot;]">
                    <div class="zoom-effect position-relative border-bottom mx-auto pb-3" style="max-width: 470px;">
                        <div class="zoom-effect-wrapper">
                            <div class="zoom-effect-img">
                                <img src="/Content/img/portfolio/grid/12.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="pt-4 mt-lg-2">
                            <h2 class="h4 mb-2"><a class="stretched-link" href="portfolio-single-v2.html">The Studio</a></h2>
                            <div class="d-flex justify-content-between fs-lg text-muted"><span>Web design</span><span>2020</span></div>
                        </div>
                    </div>
                </article>
            </div>

        </div>
    </section>
    <!-- Top 5-->
    <section class="container mt-n3 mt-sm-0 pb-5 mb-1 mb-sm-2 mb-lg-3 mb-xl-4 mb-xxl-5">
        <h2 class="h1 pb-3 mb-lg-4">Top 5 this year</h2>
        <div class="row g-4 pb-2 pb-md-4">
            <div class="col-md-4">
                <!-- Card-->
                <div class="card zoom-effect h-100 border-0 rounded-1 overflow-hidden" style="min-height: 320px;">
                    <span class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-10 zindex-2"></span>
                    <div class="zoom-effect-wrapper rounded-1 position-absolute top-0 start-0 w-100 h-100">
                        <div class="zoom-effect-img bg-size-cover bg-position-bottom-center position-absolute top-0 start-0 w-100 h-100" style="background-image: url(/Content/img/shop/categories/01.jpg);"></div>
                    </div>
                    <a class="card-body d-flex flex-column justify-content-end align-items-start position-absolute top-0 start-0 w-100 h-100 text-decoration-none zindex-3" href="shop-catalog.html"><span class="bg-light text-dark rounded-pill fs-sm fw-semibold lh-1 py-3 px-4">For the living room</span></a>
                </div>
            </div>
            <div class="col-md-8">
                <!-- Card-->
                <div class="card zoom-effect border-0 rounded-1 overflow-hidden">
                    <span class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-10 zindex-2"></span>
                    <div class="zoom-effect-wrapper rounded-1">
                        <img class="zoom-effect-img" src="/Content/img/shop/categories/02.jpg" alt="Category image">
                    </div>
                    <a class="card-body d-flex flex-column justify-content-end align-items-start position-absolute top-0 start-0 w-100 h-100 text-decoration-none zindex-3" href="shop-catalog.html"><span class="bg-light text-dark rounded-pill fs-sm fw-semibold lh-1 py-3 px-4">For the kitchen</span></a>
                </div>
                <div class="row g-4 pt-4">
                    <div class="col-sm-6">
                        <!-- Card-->
                        <div class="card zoom-effect border-0 rounded-1 overflow-hidden">
                            <span class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-10 zindex-2"></span>
                            <div class="zoom-effect-wrapper rounded-1">
                                <img class="zoom-effect-img" src="/Content/img/shop/categories/03.jpg" alt="Category image">
                            </div>
                            <a class="card-body d-flex flex-column justify-content-end align-items-start position-absolute top-0 start-0 w-100 h-100 text-decoration-none zindex-3" href="shop-catalog.html"><span class="bg-light text-dark rounded-pill fs-sm fw-semibold lh-1 py-3 px-4">For the bathroom</span></a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <!-- Card-->
                        <div class="card zoom-effect border-0 rounded-1 overflow-hidden">
                            <span class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-10 zindex-2"></span>
                            <div class="zoom-effect-wrapper rounded-1">
                                <img class="zoom-effect-img" src="/Content/img/shop/categories/04.jpg" alt="Category image">
                            </div>
                            <a class="card-body d-flex flex-column justify-content-end align-items-start position-absolute top-0 start-0 w-100 h-100 text-decoration-none zindex-3" href="shop-catalog.html"><span class="bg-light text-dark rounded-pill fs-sm fw-semibold lh-1 py-3 px-4">For the bedroom</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Features (carousel on screens < 992px)-->
    <section class="container py-5 mt-2 mb-3 mt-sm-3 mb-sm-4 my-md-4 my-lg-5">
        <div class="swiper pb-xxl-4 mb-xl-2" data-swiper-options="{
      &quot;slidesPerView&quot;: 1,
      &quot;spaceBetween&quot;: 24,
      &quot;pagination&quot;: {
        &quot;el&quot;: &quot;.swiper-pagination&quot;,
        &quot;clickable&quot;: true
      },
      &quot;breakpoints&quot;: {
        &quot;400&quot;: {
          &quot;slidesPerView&quot;: 2,
          &quot;spaceBetween&quot;: 24
        },
        &quot;700&quot;: {
          &quot;slidesPerView&quot;: 3,
          &quot;spaceBetween&quot;: 30
        },
        &quot;991&quot;: {
          &quot;slidesPerView&quot;: 4,
          &quot;spaceBetween&quot;: 40
        }
      }
    }">
            <!-- Pagination (Bullets)-->
            <div class="swiper-pagination position-relative bottom-0 pt-1 mt-4 d-lg-none"></div>
        </div>
    </section>
    <!-- Instagram feed-->
    <section class="position-relative">
        <div class="container position-relative zindex-2">
            <div class="row align-items-center g-3 g-lg-4 mb-3 mb-lg-4">
                <div class="col-sm-6 text-center order-sm-2">
                    <div class="ai-instagram fs-2 text-primary mb-2 mb-md-3 mb-lg-4"></div>
                    <h2 class="h1 mb-2 mb-sm-0">Follow us<br>
                        <a href='#' class='text-primary text-decoration-none'>#stellar_pixels</a></h2>
                    <h2 class="h1 mb-2 mb-sm-0">
                        <a href='#' class='text-primary text-decoration-none'>#stellar_pixels</a></h2>
                </div>
                <div class="col-6 col-sm-3 order-sm-1">
                    <a class="d-block card-hover zoom-effect" href="#">
                        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-1 overflow-hidden zindex-2 opacity-0">
                            <i class="ai-instagram lead text-white position-relative zindex-2"></i>
                            <div class="position-absolute top-0 start-0 w-100 h-100 bg-black opacity-20"></div>
                        </div>
                        <div class="zoom-effect-wrapper rounded-1">
                            <img class="zoom-effect-img" src="/Content/img/landing/shop/instagram/01.jpg" alt="Instagram image">
                        </div>
                    </a>
                </div>
                <div class="col-6 col-sm-3 order-sm-3">
                    <a class="d-block card-hover zoom-effect" href="#">
                        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-1 overflow-hidden zindex-2 opacity-0">
                            <i class="ai-instagram lead text-white position-relative zindex-2"></i>
                            <div class="position-absolute top-0 start-0 w-100 h-100 bg-black opacity-20"></div>
                        </div>
                        <div class="zoom-effect-wrapper rounded-1">
                            <img class="zoom-effect-img" src="/Content/img/landing/shop/instagram/02.jpg" alt="Instagram image">
                        </div>
                    </a>
                </div>
            </div>
            <div class="row g-3 g-lg-4">
                <div class="col-6 col-sm-3">
                    <a class="d-block card-hover zoom-effect" href="#">
                        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-1 overflow-hidden zindex-2 opacity-0">
                            <i class="ai-instagram lead text-white position-relative zindex-2"></i>
                            <div class="position-absolute top-0 start-0 w-100 h-100 bg-black opacity-20"></div>
                        </div>
                        <div class="zoom-effect-wrapper rounded-1">
                            <img class="zoom-effect-img" src="/Content/img/landing/shop/instagram/03.jpg" alt="Instagram image">
                        </div>
                    </a>
                </div>
                <div class="col-6 col-sm-3">
                    <a class="d-block card-hover zoom-effect" href="#">
                        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-1 overflow-hidden zindex-2 opacity-0">
                            <i class="ai-instagram lead text-white position-relative zindex-2"></i>
                            <div class="position-absolute top-0 start-0 w-100 h-100 bg-black opacity-20"></div>
                        </div>
                        <div class="zoom-effect-wrapper rounded-1">
                            <img class="zoom-effect-img" src="/Content/img/landing/shop/instagram/04.jpg" alt="Instagram image">
                        </div>
                    </a>
                </div>
                <div class="col-6 col-sm-3">
                    <a class="d-block card-hover zoom-effect" href="#">
                        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-1 overflow-hidden zindex-2 opacity-0">
                            <i class="ai-instagram lead text-white position-relative zindex-2"></i>
                            <div class="position-absolute top-0 start-0 w-100 h-100 bg-black opacity-20"></div>
                        </div>
                        <div class="zoom-effect-wrapper rounded-1">
                            <img class="zoom-effect-img" src="/Content/img/landing/shop/instagram/05.jpg" alt="Instagram image">
                        </div>
                    </a>
                </div>
                <div class="col-6 col-sm-3">
                    <a class="d-block card-hover zoom-effect" href="#">
                        <div class="d-flex justify-content-center align-items-center position-absolute top-0 start-0 w-100 h-100 rounded-1 overflow-hidden zindex-2 opacity-0">
                            <i class="ai-instagram lead text-white position-relative zindex-2"></i>
                            <div class="position-absolute top-0 start-0 w-100 h-100 bg-black opacity-20"></div>
                        </div>
                        <div class="zoom-effect-wrapper rounded-1">
                            <img class="zoom-effect-img" src="/Content/img/landing/shop/instagram/06.jpg" alt="Instagram image">
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="d-none d-lg-block bg-dark position-absolute start-0 bottom-0 w-100" style="height: 155px;">
            <div class="d-none d-dark-mode-block position-absolute top-0 start-0 w-100 h-100" style="background-color: rgba(255,255,255, .02);"></div>
        </div>
        <div class="d-lg-none bg-dark position-absolute start-0 bottom-0 w-100" style="height: 80px;">
            <div class="d-none d-dark-mode-block position-absolute top-0 start-0 w-100 h-100" style="background-color: rgba(255,255,255, .02);"></div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" runat="server">
    <script src="/Content/library/jarallax/dist/jarallax.min.js"></script>
    <script src="/Content/library/swiper/swiper-bundle.min.js"></script>
    <script src="/Content/library/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="/Content/library/shufflejs/dist/shuffle.min.js"></script>
</asp:Content>

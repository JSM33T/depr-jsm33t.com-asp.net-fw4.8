<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jsmtcom.Music.Default" EnableViewState="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageStyles" runat="server">

    <link rel="stylesheet" media="screen" href="/Content/library/aos/dist/aos.css" />
    <link rel="stylesheet" media="screen" href="/Content/library/lightgallery/css/lightgallery-bundle.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="position-relative pt-sm-3 pt-md-5 mb-xl-3 mb-xxl-5">
        <div class="position-absolute top-0 end-0 overflow-hidden mt-n5 mt-md-0">
            <svg class="d-block mt-n5 mt-md-0 me-md-n5 me-xxl-0" width="1207" height="894" viewBox="0 0 1207 894" fill="currentColor" xmlns="http://www.w3.org/2000/svg" style="color: var(--ar-gray-100);">
                <circle cx="639" cy="255" r="639"></circle>
            </svg>
            <lottie-player class="position-absolute top-0 end-0 opacity-20 mt-n5 mt-md-0 me-md-n5 me-xxl-n4" src="/Content/json/animation-soundwave.json" background="transparent" speed="1" loop autoplay style="max-width: 560px; height: 720px;"></lottie-player>
        </div>
        <div class="container pt-5 pb-lg-4 pb-xl-5 mt-5">
            <div class="row pt-xl-4">
                <!-- Sticky image-->
                <div class="col-md-5 col-lg-6 offset-xxl-1 order-md-2 position-relative mb-3 mb-md-0" style="margin-top: -115px;">
                    <div class="d-none d-md-block position-absolute bottom-0 end-0 text-uppercase fw-bold lh-1 pb-5 mb-4 pe-3" style="color: var(--ar-gray-100); font-size: 180px; transform: translate3d(0,0,0);">
                        <div class="d-flex mb-lg-3" style="padding-left: 160px;">
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="400" data-aos-delay="150">J</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="400" data-aos-delay="200">S</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="400" data-aos-delay="250">M</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="400" data-aos-delay="300">3</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="400" data-aos-delay="350">3</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="400" data-aos-delay="400">T</div>
                        </div>
                        <div class="d-flex">
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="300" data-aos-delay="150">M</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="300" data-aos-delay="200">u</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="300" data-aos-delay="250">s</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="300" data-aos-delay="300">i</div>
                            <div data-aos="flip-right" data-aos-duration="700" data-aos-offset="300" data-aos-delay="350">c</div>
                        </div>
                    </div>
                    <div class="position-sticky zindex-3 top-0" style="padding-top: 115px;">
                        <div class="px-5 px-md-0 ps-xl-5 ms-lg-3">
                            <img class="d-block mx-auto mx-md-0" src="/Content/img/landing/product/hero-image.png" width="465" alt="Headphones"/>
                        </div>
                    </div>
                </div>
                <!-- Text-->
                <div class="col-md-7 col-lg-6 col-xxl-5 order-md-1 position-relative zindex-3 text-center text-md-start pb-sm-3 pb-md-5 pt-4 mb-md-5 mt-2">
                    <h1 class="display-3 text-uppercase mb-sm-4">
                        <span class='fw-medium'>The</span> <span class='text-info fw-bold'>Studio</span></h1>
                    <div class="mx-auto mx-md-0" style="max-width: 400px;">
                        <p class="pb-2 pb-lg-0 mb-4 mb-lg-5">All my projects since 2017, Bootlegs,Originals ,teasers and much more</p>
                        <a class="btn btn-outline-dark" href="#secondcontent" data-scroll="data-scroll">Explore</a>
                        <div class="d-flex justify-content-center justify-content-md-between pt-4 pt-sm-5 mt-2 mt-sm-0 mt-lg-4 mt-xl-5 ms-md-n3">
                            <div class="px-3">
                                <div class="h4 mb-1">200K+</div>
                                <div class="fs-sm">Total YouTube Views </div>
                            </div>
                            <div class="px-3">
                                <div class="h4 mb-1">85K+ </div>
                                <div class="fs-sm">SoundCloud plays</div>
                            </div>
                            <div class="px-3">
                                <div class="h4 mb-1">10+</div>
                                <div class="fs-sm">Radio/Podcast features </div>
                            </div>
                        </div>
                        <span id="secondcontent"></span>
                        <div class="d-none d-xxl-block" style="height: 290px;"></div>
                        <div class="d-none d-md-block d-xxl-none" style="height: 240px;"></div>
                        <div class="d-md-none" style="height: 50px;"></div>
                        <div data-aos="fade-up" data-aos-duration="800" data-aos-offset="250" data-disable-parallax-down="md">
                            <h2 class="h1 pb-sm-2 pb-md-3">You can take the music anywhere in posuere the music</h2>
                            <p>Turpis nullam netus sed aliquam consectetur at felis  consequat tincidunt orci varius arcu urna neque eget maecenas consequat lacus habitasse adipiscing in.</p>
                            <a class="btn btn-link text-dark px-0" href="#projects" data-scroll="data-scroll">Read more<i class="ai-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Video + Features-->

   

    <!-- Gallery-->
    <section class="container py-5 my-lg-3 my-xl-4 my-xxl-5" id="projects">
        <div class="text-center pt-sm-2 pt-md-4 pt-lg-3 pt-xl-4 pb-3 mx-auto mb-3 mb-lg-4" style="max-width: 720px;">
            <h2 class="h1 pt-1 pt-sm-2">Our Projects</h2>
            <p class="mb-0">Turpis nullam netus sed aliquam consectetur at felis  consequat tincidunt orci varius arcu urna neque eget maecenas consequat lacus habitasse adipiscing.</p>
        </div>
        <div class="row g-4 mb-3 mb-xl-0 pb-sm-2 pb-md-4 pb-xl-5">
            <div class="col-md-5 col-lg-4 order-md-1">
               <%-- <div class="card border-0 h-100 bg-size-cover bg-position-top-center" style="min-height: 280px; background-image: url(/Content/img/landing/product/gallery/01.jpg);"></div>--%>
                <div class="card border-0 bg-secondary h-100 px-xl-4 pb-sm-2 pb-xl-4">
                    <img class="d-block mx-auto" src="/Content/img/landing/product/gallery/03.png" width="408" alt="Image"/>
                    <div class="card-body">
                        <h3>Singles</h3>
                        <p class="card-text">All about blends of bollywood with electronic music beyond genres</p>
                        <button type="button" class="btn btn-primary pe-none">Coming Soon</button>
                    </div>
                </div>
            </div>

            <div class="col-md-7 col-lg-8 order-md-2">
                <div class="card border-0 bg-secondary h-100 px-xl-4 pb-sm-2 pb-xl-4">
                    <img class="d-block mx-auto" src="/Content/img/landing/product/gallery/03.png" width="408" alt="Image"/>
                    <div class="card-body">
                        <h3>Project Recuerdos</h3>
                        <p class="card-text">All about blends of bollywood with electronic music beyond genres</p>
                        <button type="button" class="btn btn-primary pe-none">Coming Soon</button>
                    </div>
                </div>
            </div>
            <div class="col-md-5 col-lg-4 order-md-4">
                <div class="card border-0 h-100 bg-size-cover bg-position-center" style="min-height: 280px; background-image: url(/Content/img/landing/product/gallery/02.jpg);"></div>
            </div>
            <div class="col-md-7 col-lg-8 order-md-3">
                <div class="card border-0 bg-secondary h-100">
                    <div class="row g-0">
                        <div class="col-lg-6">
                            <img class="d-block" src="/Content/img/landing/product/gallery/04.png" width="377" alt="Image"/>
                        </div>
                        <div class="col-lg-6 align-self-center mt-n4 mt-lg-0">
                            <div class="card-body">
                                <h3>Discography</h3>
                                <p class="card-text">All my tracks since 2017 along with download links</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" runat="server">
    <script src="/Content/library/lottiefiles/lottie-player/dist/lottie-player.js"></script>
    <script src="/Content/library/aos/dist/aos.js"></script>
    <script src="/Content/library/lightgallery/lightgallery.min.js"></script>
    <script src="/Content/library/lightgallery/plugins/video/lg-video.min.js"></script>
</asp:Content>

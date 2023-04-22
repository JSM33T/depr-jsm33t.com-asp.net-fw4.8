<%@ Page
    Title="jsm33t.com - Home"
    MetaDescription="Music,Archive,Apps,Gallery and much more.."
    MetaKeywords="personal website,music,gallery,blogs,communities,apps"
    EnableViewState="false" Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="jsmtcom.Default" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageStyles" runat="server">
    <style>
 .scroll-down-btn{display:inline-block;text-decoration:none}.scroll-down-btn p{margin-top:1.25rem;color:#fff;font-size:.875rem;font-weight:500;letter-spacing:.375rem;text-indent:.375rem;animation:5s ease-out infinite colorText,5s ease-out infinite nudgeText}.mouse{background:linear-gradient(transparent 0,transparent 50%,#fff 50%,#fff 100%) #2c333e;position:relative;width:38px;height:65px;margin:0 auto;border-radius:6rem;background-size:100% 200%;animation:5s linear infinite colorSlide,5s ease-out infinite nudgeMouse}.mouse:after,.mouse:before{content:'';position:absolute;top:0;right:0;bottom:0;left:0;margin:auto}.mouse:before{width:34px;height:61px;background-color:#121519;border-radius:6rem}.mouse:after{background-color:#fff;width:.375rem;height:.375rem;border-radius:100%;animation:5s linear infinite trackBallSlide}@keyframes colorSlide{0%{background-position:0 100%}20%,50%,80%{background-position:0 0}21%,51%,81%{background-color:#2c333e}29.99%,59%{background-color:#fff;background-position:0 0}30%,60%{background-color:#2c333e;background-position:0 100%}100%,90%{background-color:#fff}}@keyframes trackBallSlide{0%,100%,28%,29.99%,30%,58%,59.99%,60%,88%{opacity:1;transform:scale(1) translateY(-20px)}36%,6%,66%{opacity:1;transform:scale(.9) translateY(5px)}14%,44%,74%{opacity:0;transform:scale(.4) translateY(40px)}15%,19%,45%,49%,75%,79%{opacity:0;transform:scale(.4) translateY(-20px)}}@keyframes nudgeMouse{0%,30%,60%,90%{transform:translateY(0)}20%,50%,80%{transform:translateY(8px)}}@keyframes nudgeText{0%,30%,60%,90%{transform:translateY(0)}20%,50%,80%{transform:translateY(2px)}}@keyframes colorText{21%,51%,81%{color:#2c333e}30%,60%,90%{color:#fff}}
    </style>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="bg-dark dark-mode position-relative min-vh-100 overflow-hidden pt-5">
        <svg class="position-absolute top-0" width="262" height="160" viewBox="0 0 262 160" fill="none" xmlns="http://www.w3.org/2000/svg" style="left: 6%;">
            <ellipse cx="131" cy="30.5" rx="131" ry="129.5" fill="white" fill-opacity=".03"></ellipse>
        </svg>
        <div class="container position-relative zindex-5 text-center pt-5 mt-lg-4 mt-xl-5">
            <h1 class="display-3 text-center mx-auto pt-5 my-2 my-sm-4" style="max-width: 680px;">Hey!</h1>
            <svg class="d-block mx-auto text-primary" width="511" height="40" viewBox="0 0 511 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path d="M385.252 0.160149C313.41 0.614872 292.869 0.910678 253.008 2.06539C211.7 3.26203 182.137 4.46154 135.231 6.84429C124.358 7.39665 112.714 7.92087 99.0649 8.47247C48.9242 10.4987 39.1671 11.0386 22.9579 12.6833C14.9267 13.4984 7.98117 14.0624 4.08839 14.2162C0.627411 14.3527 0 14.4386 0 14.7762C0 15.0745 5.53537 15.3358 8.56298 15.1804C9.64797 15.1248 12.5875 14.9887 15.0956 14.8782C17.6037 14.7676 23.123 14.4706 27.3608 14.2183C37.3399 13.6238 42.1312 13.4363 59.2817 12.9693C88.1133 12.1844 109.893 11.43 136.647 10.2898C146.506 9.86957 159.597 9.31166 165.737 9.04993C212.308 7.06466 269.195 5.29439 303.956 4.74892C346.139 4.08665 477.094 3.50116 474.882 3.98441C474.006 4.17607 459.021 5.6015 450.037 6.34782C441.786 7.03345 428 8.02235 411.041 9.14508C402.997 9.67773 391.959 10.4149 386.51 10.7832C366.042 12.1673 359.3 12.5966 347.67 13.2569C294.096 16.2987 258.708 18.9493 209.451 23.6091C180.174 26.3788 156.177 29.5584 129.396 34.2165C114.171 36.8648 112.687 37.3352 114.186 39.0402C115.161 40.1495 122.843 40.2933 138.338 39.492C166.655 38.0279 193.265 36.8923 219.043 36.048C235.213 35.5184 237.354 35.4296 253.795 34.6075C259.935 34.3005 270.549 33.8517 277.382 33.6105L289.804 33.1719L273.293 32.999C248.274 32.7369 221.435 32.7528 212.596 33.035C183.334 33.9693 167.417 34.6884 141.419 36.2506C135.222 36.623 129.994 36.8956 129.801 36.8566C127.94 36.4786 169.612 30.768 189.492 28.6769C234.369 23.956 280.582 20.4337 351.602 16.3207C358.088 15.9451 371.108 15.1233 380.535 14.4947C389.962 13.866 404.821 12.8761 413.556 12.2946C447.177 10.057 457.194 9.22358 489.506 5.97543C510.201 3.895 510.311 3.8772 510.875 2.50901C511.496 1.00469 509.838 0.322131 505.088 0.127031C500.576 -0.0584957 416.098 -0.0351424 385.252 0.160149ZM291.144 33.02C291.536 33.0658 292.102 33.0641 292.402 33.0162C292.703 32.9683 292.383 32.9308 291.691 32.9329C290.999 32.935 290.753 32.9743 291.144 33.02Z">
                </path>
            </svg>
            <a class="scroll-down-btn" href="#subs" data-scroll="data-scroll" data-scroll-offset="20">
                <div class="mouse"></div>
                <p>EXPLORE!</p>
            </a>
        </div>
        <div class="d-none d-lg-block" style="margin-top: -80px;"></div>
        <div class="d-none d-sm-block d-lg-none" style="margin-top: -40px;"></div>
        <!-- <div class="parallax mx-auto mb-n5" style="max-width: 1606px;">
          <div class="parallax-layer" data-depth="-0.1"><img src="/Content/img/landing/intro/hero/01.png" alt="Background shapes"></div>
          <div class="parallax-layer zindex-2" data-depth="0.12"><img src="/Content/img/landing/intro/hero/02.png" alt="Foreground shape"></div>
          <div class="parallax-layer zindex-2" data-depth="0.35"><img src="/Content/img/landing/intro/hero/03.png" alt="Foreground shape"></div>
          <div class="parallax-layer zindex-2" data-depth="0.23"><img src="/Content/img/landing/intro/hero/04.png" alt="Foreground shape"></div>
        </div> -->
        <div class="col-md-5 col-lg-6 offset-xxl-1 order-md-2 position-relative mb-3 mb-md-0" style="margin-top: 40px; margin-left: 280px">
            <div class="d-none d-md-block position-absolute bottom-0 end-0 text-uppercase fw-bold lh-1 pb-5 mb-4 pe-3" style="color: var(--ar-gray-100); font-size: 180px; transform: translate3d(0,0,0);">
                <div class="d-flex mb-lg-3" style="padding-left: 160px;">
                    <div data-aos="flip-right" data-aos-duration="800" data-aos-offset="400" data-aos-delay="150">J</div>
                    <div data-aos="flip-right" data-aos-duration="900" data-aos-offset="400" data-aos-delay="200">S</div>
                    <div data-aos="flip-right" data-aos-duration="1000" data-aos-offset="400" data-aos-delay="250">M</div>
                    <div data-aos="flip-right" data-aos-duration="1000" data-aos-offset="400" data-aos-delay="300">3</div>
                    <div data-aos="flip-right" data-aos-duration="1000" data-aos-offset="400" data-aos-delay="350">3</div>
                    <div data-aos="flip-right" data-aos-duration="1000" data-aos-offset="400" data-aos-delay="400">T</div>
                </div>

            </div>

        </div>
        <div class="col-md-5 col-lg-6 offset-xxl-1 order-md-2 position-relative mb-3 mb-md-0" style="margin-top: 180px; margin-left: 350px;">
            <div class="d-none d-md-block position-absolute bottom-0 end-0 text-uppercase fw-bold lh-1 pb-5 mb-4 pe-3" style="color: var(--ar-gray-100); font-size: 180px; transform: translate3d(0,0,0);">
                <div class="d-flex mb-lg-3" style="padding-left: 260px;">
                    <div data-aos="flip-right" data-aos-duration="1100" data-aos-offset="400" data-aos-delay="550">.</div>
                    <div data-aos="flip-right" data-aos-duration="2000" data-aos-offset="400" data-aos-delay="550">c</div>
                    <div data-aos="flip-right" data-aos-duration="2100" data-aos-offset="400" data-aos-delay="600">o</div>
                    <div data-aos="flip-right" data-aos-duration="2000" data-aos-offset="400" data-aos-delay="650">m</div>
                </div>

            </div>

        </div>
    </section>

    <section class="container pt-5 mt-5" id="subs">
        <div class="bg-dark position-relative rounded-5 overflow-hidden px-4 pt-1 pb-2 py-sm-4 py-lg-5">

            <div class="d-none d-dark-mode-block position-absolute top-0 start-0 w-100 h-100" style="background-color: rgba(255,255,255, .02);"></div>
            <div class="position-absolute top-0 end-0 pe-5 zindex-2">
                <svg class="me-5" width="514" height="254" viewBox="0 0 514 254" fill="white" fill-opacity=".03" xmlns="http://www.w3.org/2000/svg">
                    <ellipse cx="257" cy="0.5" rx="257" ry="253.5"></ellipse>
                </svg>
            </div>
            <div class="d-none d-lg-flex position-absolute start-0 bottom-0 ms-n4">
                <div data-aos="fade-left" data-aos-duration="700" data-aos-anchor-placement="bottom-bottom">
                    <svg class="text-primary" width="117" height="117" viewBox="0 0 117 117" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="58.5" cy="58.5" r="58.5"></circle>
                    </svg>
                </div>
                <div data-aos="fade-right" data-aos-duration="700" data-aos-anchor-placement="bottom-bottom">
                    <svg class="text-warning" width="117" height="117" viewBox="0 0 117 117" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path d="M-2.51516e-06 58.5C-3.52666e-06 70.0702 3.43096 81.3806 9.85902 91.0008C16.2871 100.621 25.4235 108.119 36.113 112.547C46.8025 116.975 58.5649 118.133 69.9128 115.876C81.2607 113.619 91.6844 108.047 99.8657 99.8657C108.047 91.6844 113.619 81.2607 115.876 69.9128C118.133 58.5649 116.975 46.8025 112.547 36.113C108.119 25.4235 100.621 16.2871 91.0009 9.85903C81.3806 3.43096 70.0702 -4.24071e-06 58.5 -5.11423e-06L58.5 58.5L-2.51516e-06 58.5Z">
                        </path>
                    </svg>
                </div>
            </div>
            <div class="dark-mode position-relative zindex-3 text-center py-5 my-xl-3 mx-auto" style="max-width: 565px;">
                <h2 class="display-5">Subscribe for updates</h2>
                <p class="fs-lg pb-3 mb-3 mb-lg-4">Subscribe to the newsletter to receive updates about contents.</p>
                <div class="subscription-form  mx-auto" name="mc-embedded-subscribe-form" novalidate="novalidate" style="max-width: 500px;">
                    <div class="input-group">
                        <span class="input-group-text"><i class="ai-mail"></i></span>
                        <input class="form-control" type="text" id="userEmail" name="userEmail" placeholder="Enter your email" runat="server" autocomplete="off" aria-autocomplete="none"/>
                        <button type="button" class="btn btn-primary" id="subbutton" onclick="mail_init()" name="subscribe">Subscribe</button>
                    </div>

                    <%--   <asp:UpdatePanel ID="triggerbutton" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="submitmail" Text="nil" onclick="SubmitClick" runat="server" hidden="hidden"/>
                        </ContentTemplate>
                    </asp:UpdatePanel>--%>

                    <asp:UpdatePanel ID="emailstat" runat="server">
                        <ContentTemplate>
                            <asp:Literal ID="stat" runat="server" />
                        </ContentTemplate>
                    </asp:UpdatePanel>


                    <%--<span id="userEmail-info"></span>--%>
                    <div style="position: absolute; left: -5000px;" aria-hidden="true">
                        <input class="subscription-form-antispam" type="text" name="b_c7103e2c981361a6639545bd5_29ca296126" tabindex="-1"/>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:UpdatePanel ID="triggerbutton" runat="server">
        <ContentTemplate>
            <asp:Button ID="submitmail" Text="nil" OnClick="SubmitClick" runat="server" hidden="hidden" />
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageScripts" runat="server">
    <script>
//default.js
        function mail_trigger() { $("#subbutton").html('<span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span>Saving'), $("#subbutton").attr("class", "btn btn-primary pe-none"), $("#MainContent_submitmail").click() } function mail_init() { var t; document.getElementById("MainContent_userEmail").value.match(/^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/) ? mail_trigger() : ($("#MainContent_emailstat").html('<div class="subscription-status mx-auto status-error">Invalid Email Format</div>'), setTimeout(() => { $("#MainContent_emailstat").html("") }, 4e3)) } function pageLoad() { $("#subbutton").html("Subscribe"), $("#subbutton").attr("class", "btn btn-primary"), setTimeout(() => { $("#MainContent_emailstat").html("") }, 4e3) } $(document).ready(function () { $("#MainContent_userEmail").keypress(function (t) { (10 === t.keyCode || 13 === t.keyCode) && (t.preventDefault(), mail_init()) }) });
    </script>

    <script src="/Content/library/aos/dist/aos.js"></script>
    <script src="/Content/library/parallax-js/dist/parallax.min.js"></script>
    <script src="/Content/library/jarallax/dist/jarallax.min.js"></script>
</asp:Content>

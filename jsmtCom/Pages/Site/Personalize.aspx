<%@ Page Title="Personalize"
    MetaDescription="Personalization Page"
    MetaKeywords="personalize site, customize , themes , color pallets, themes"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Personalize.aspx.cs"
    Inherits="jsmtcom.Account.Personalize" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageStyles" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5 mt-4 mt-lg-5 mb-lg-4 my-xl-5 ">
        <div class="row pt-sm-2 pt-lg-0">
            <nav aria-label="breadcrumb">
                <ol class="pt-lg-3 pb-lg-4 pb-2 breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Personalize</li>
                </ol>
            </nav>
            <div class="col-lg-12 pt-4 pb-2 pb-sm-4">
                <h1 class="h2 mb-4">Personalize</h1>
                <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center mt-sm-n1 pb-4 mb-0 mb-lg-1 mb-xl-3">
                            <i
                                class="ai-user text-primary lead pe-1 me-2"></i>
                            <h2 class="h4 mb-0">Themes</h2>
                        </div>
                        <div class="col-lg-12 ">
                            <div class="row row-cols-1 row-cols-sm-2 g-1">
                                <div class="col-lg-3">
                                    <a class="card-flip card-lifted">
                                        <div class="card-flip-inner">
                                            <div class="card-flip-front rounded-3"
                                                style="background-image: url(/Content/images/theme_covers/01.jpg);">
                                                <div class="d-flex flex-column h-100 ignore-dark-mode">
                                                    <span id="badge1" class="badge theme-badge bg-faded-primary text-primary"></span>
                                                    <h2 class="fs-lg fw-normal mb-0 mt-auto">la lavande</h2>
                                                </div>
                                            </div>
                                            <div class="card-flip-back card-lifted rounded-3 bg-secondary">

                                                <div class="d-flex flex-column h-100 px-sm-2 pt-sm-2 px-lg-0 pt-lg-0 px-xl-3 pt-xl-3">
                                                    <h3 class="h4">la lavande</h3>
                                                    <span style="color: #86608e">(#796194)</span>
                                                    <p class="text-body mb-3">
                                                        A delicate shade of purple that is reminiscent of elegance, grace, and refinement.
                                                    </p>
                                                    <span class="d-block rounded-square"
                                                        style="width: 5rem; height: 1.5rem; border-radius: 5px; background-color: #86608e;"></span>
                                                    <div class="text-end pt-3 pt-sm-2 pt-xl-4 mt-auto me-sm-n2 me-lg-0 me-xl-n3">
                                                        <div id="theme-set1" class="btn btn-sm btn-icon btn-outline-primary rounded-circle">
                                                            <i class="ai-arrow-right"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-3">
                                    <a class="card-flip card-lifted ">
                                        <div class="card-flip-inner">
                                            <div class="card-flip-front rounded-3"
                                                style="background-image: url(/Content/images/theme_covers/02.jpg);">
                                                <div class="d-flex flex-column h-100 ignore-dark-mode">
                                                    <span id="badge2" class="badge theme-badge bg-faded-primary text-primary"></span>
                                                    <h2 class="fs-lg fw-normal mb-0 mt-auto">mauve taupe</h2>
                                                </div>
                                            </div>
                                            <div class="card-flip-back rounded-3 bg-secondary">
                                                <div class="d-flex flex-column h-100 px-sm-2 pt-sm-2 px-lg-0 pt-lg-0 px-xl-3 pt-xl-3">
                                                    <h3 class="h4">mauve taupe</h3>
                                                    <span style="color: #955b6f">(#955b6f)</span>
                                                    <p class="text-body mb-3">As calm as the petals of a forget-me-not</p>
                                                    <span class="d-block rounded-square"
                                                        style="width: 5rem; height: 1.5rem; border-radius: 5px; background-color: #955b6f;"></span>
                                                    <div class="text-end pt-3 pt-sm-2 pt-xl-4 mt-auto me-sm-n2 me-lg-0 me-xl-n3">
                                                        <div id="theme-set2" class="btn btn-sm btn-icon rounded-circle btn-outline-primary">
                                                            <i class="ai-arrow-right"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-3">
                                    <a class="card-flip card-lifted ">
                                        <div class="card-flip-inner">
                                            <div class="card-flip-front rounded-3"
                                                style="background-image: url(/Content/images/theme_covers/04.jpg);">
                                                <div class="d-flex flex-column h-100 ignore-dark-mode">
                                                    <span id="badge3" class="badge theme-badge bg-faded-primary text-primary"></span>
                                                    <h2 class="fs-lg fw-normal mb-0 mt-auto">sLATE</h2>
                                                </div>
                                            </div>
                                            <div class="card-flip-back rounded-3 bg-secondary">
                                                <div class="d-flex flex-column h-100 px-sm-2 pt-sm-2 px-lg-0 pt-lg-0 px-xl-3 pt-xl-3">
                                                    <h3 class="h4">sLATE</h3>
                                                    <span style="color: #66818f">(#66818f)</span>
                                                    <p class="text-body mb-3">
                                                        Slate!<br>
                                                        Sharp!
                                                    </p>
                                                    <span class="d-block rounded-square"
                                                        style="width: 5rem; height: 1.5rem; border-radius: 5px; background-color: #66818f;"></span>
                                                    <div class="text-end pt-3 pt-sm-2 pt-xl-4 mt-auto me-sm-n2 me-lg-0 me-xl-n3">
                                                        <div id="theme-set3" class="btn btn-sm btn-icon rounded-circle btn-outline-primary">
                                                            <i
                                                                class="ai-arrow-right"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 d-flex justify-content-end pt-3">
                            <button class="btn btn-secondary ms-3" id="theme-reset" type="button">Reset to default</button>
                        </div>
                    </div>
                </section>
            </div>
            <section class="card border-0 py-1 p-md-2 p-xl-3 p-xxl-4 mb-4">
                <div class="card-body">
                    <div class="d-flex align-items-center pb-4 mt-sm-n1 mb-0 mb-lg-1 mb-xl-3">
                        <i
                            class="ai-bell text-primary lead pe-1 me-2"></i>
                        <h2 class="h4 mb-0">Accessibility</h2>
                    </div>
                    <div class="form-check form-switch d-flex pb-md-2 mb-4">
                        <input class="form-check-input flex-shrink-0 dark_mode_trigger" type="checkbox" id="dmode-trigger"/>
                        <label class="form-check-label ps-3 ps-sm-4" for="dark-mode">
                            <span class="h6 d-block mb-2">Dark
              Mode</span><span class="fs-sm text-muted">A whole new material dark mode experience.</span></label>
                    </div>
                    <div class="form-check form-switch d-flex">
                        <input class="form-check-input flex-shrink-0" type="checkbox" disabled id="daily-summary"/>
                        <label class="form-check-label opacity-100 ps-3 ps-sm-4" for="daily-summary">
                            <span
                                class="h6 text-muted d-block mb-2">Another Feature<span
                                    class="badge bg-faded-danger text-danger ms-3">id</span></span><span class="fs-sm text-muted">Some
              feature description</span></label>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <hr class="d-none d-dark-mode-block">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" runat="server">
    <script>
        $(document).ready(function () {

            $("#dmode-trigger").change(function () {
                if (this.checked) {
                    $("#theme-mode").prop("checked", true);
                    root.classList.add('dark-mode');
                    localStorage.setItem("mode", "dark")
                }
                else {
                    $("#theme-mode").prop("checked", false);
                    root.classList.remove('dark-mode');
                    localStorage.removeItem("mode");

                }
            });
            let elem_mode = localStorage.getItem("mode");
            if (elem_mode === undefined || elem_mode === "") { $("#dmode-trigger").prop("checked", false); }
            else if (elem_mode === "dark") { $("#dmode-trigger").prop("checked", true); }

            $("#theme-set1").click(function () {
                localStorage.setItem("badge", "1");
                $('.themebadge').html('');
                $('#badge1').html('Active');
                $('#badge2').html('');
                $('#badge3').html('');
                $('#badge4').html('');
                $('#custom_theme').html(':root{--ar-primary:#796194;--ar-primary-rgb:121,97,148;--ar-warning-rgb:148,121,97;--ar-info-rgb:91,111,149;--ar-success-rgb:97,148,121;--ar-border-radius:0.5rem;--ar-link-color:#796194;--ar-link-hover-color:#60487b;--ar-danger:#946163;--ar-danger-rgb:148,97,99;--ar-body-font-family:"Raleway",sans-serif;--ar-warning:#947961;--ar-success:#619479;}.btn-primary{--ar-btn-bg:#796194;--ar-btn-border-color:#796194;--ar-btn-hover-bg:#60487b;--ar-btn-hover-border-color:#60487b;--ar-btn-active-bg:#60487b;--ar-btn-active-border-color:#60487b;--ar-btn-disabled-bg:#796194;--ar-btn-disabled-border-color:#796194;}.btn-warning{--ar-btn-bg:#947961;--ar-btn-border-color:#947961;--ar-btn-hover-bg:#7b6048;--ar-btn-hover-border-color:#7b6048;--ar-btn-active-bg:#7b6048;--ar-btn-active-border-color:#7b6048;--ar-btn-disabled-bg:#947961;--ar-btn-disabled-border-color:#947961;}.btn-info{--ar-btn-bg:#5B6F95;--ar-btn-border-color:#5B6F95;--ar-btn-hover-bg:#42567c;--ar-btn-hover-border-color:#42567c;--ar-btn-active-bg:#42567c;--ar-btn-active-border-color:#42567c;--ar-btn-disabled-bg:#5B6F95;--ar-btn-disabled-border-color:#5B6F95;}.btn-success{--ar-btn-bg:#619479;--ar-btn-border-color:#619479;--ar-btn-hover-bg:#487b60;--ar-btn-hover-border-color:#487b60;--ar-btn-active-bg:#487b60;--ar-btn-active-border-color:#487b60;--ar-btn-disabled-bg:#619479;--ar-btn-disabled-border-color:#619479;}.btn-danger{--ar-btn-bg:#946163;--ar-btn-border-color:#946163;--ar-btn-hover-bg:#7b484a;--ar-btn-hover-border-color:#7b484a;--ar-btn-active-bg:#7b484a;--ar-btn-active-border-color:#7b484a;--ar-btn-disabled-bg:#946163;--ar-btn-disabled-border-color:#946163;}.btn-outline-primary{--ar-btn-color:#796194;--ar-btn-border-color:#796194;--ar-btn-hover-bg:#796194;--ar-btn-hover-border-color:#796194;--ar-btn-active-bg:#796194;--ar-btn-active-border-color:#796194;--ar-btn-disabled-color:#796194;--ar-btn-disabled-border-color:#796194;}.btn-outline-warning{--ar-btn-color:#947961;--ar-btn-border-color:#947961;--ar-btn-hover-bg:#947961;--ar-btn-hover-border-color:#947961;--ar-btn-active-bg:#947961;--ar-btn-active-border-color:#947961;--ar-btn-disabled-color:#947961;--ar-btn-disabled-border-color:#947961;}.btn-outline-info{--ar-btn-color:#5B6F95;--ar-btn-border-color:#5B6F95;--ar-btn-hover-bg:#5B6F95;--ar-btn-hover-border-color:#5B6F95;--ar-btn-active-bg:#5B6F95;--ar-btn-active-border-color:#5B6F95;--ar-btn-disabled-color:#5B6F95;--ar-btn-disabled-border-color:#5B6F95;}.btn-outline-success{--ar-btn-color:#619479;--ar-btn-border-color:#619479;--ar-btn-hover-bg:#619479;--ar-btn-hover-border-color:#619479;--ar-btn-active-bg:#619479;--ar-btn-active-border-color:#619479;--ar-btn-disabled-color:#619479;--ar-btn-disabled-border-color:#619479;}.btn-outline-danger{--ar-btn-color:#946163;--ar-btn-border-color:#946163;--ar-btn-hover-bg:#946163;--ar-btn-hover-border-color:#946163;--ar-btn-active-bg:#946163;--ar-btn-active-border-color:#946163;--ar-btn-disabled-color:#946163;--ar-btn-disabled-border-color:#946163;}');
                localStorage.setItem("cust_theme", ":root{--ar-primary:#796194;--ar-primary-rgb:121,97,148;--ar-warning-rgb:148,121,97;--ar-info-rgb:91,111,149;--ar-success-rgb:97,148,121;--ar-border-radius:0.5rem;--ar-link-color:#796194;--ar-link-hover-color:#60487b;--ar-danger:#946163;--ar-danger-rgb:148,97,99;--ar-body-font-family:\"Raleway\",sans-serif;--ar-warning:#947961;--ar-success:#619479;}.btn-primary{--ar-btn-bg:#796194;--ar-btn-border-color:#796194;--ar-btn-hover-bg:#60487b;--ar-btn-hover-border-color:#60487b;--ar-btn-active-bg:#60487b;--ar-btn-active-border-color:#60487b;--ar-btn-disabled-bg:#796194;--ar-btn-disabled-border-color:#796194;}.btn-warning{--ar-btn-bg:#947961;--ar-btn-border-color:#947961;--ar-btn-hover-bg:#7b6048;--ar-btn-hover-border-color:#7b6048;--ar-btn-active-bg:#7b6048;--ar-btn-active-border-color:#7b6048;--ar-btn-disabled-bg:#947961;--ar-btn-disabled-border-color:#947961;}.btn-info{--ar-btn-bg:#5B6F95;--ar-btn-border-color:#5B6F95;--ar-btn-hover-bg:#42567c;--ar-btn-hover-border-color:#42567c;--ar-btn-active-bg:#42567c;--ar-btn-active-border-color:#42567c;--ar-btn-disabled-bg:#5B6F95;--ar-btn-disabled-border-color:#5B6F95;}.btn-success{--ar-btn-bg:#619479;--ar-btn-border-color:#619479;--ar-btn-hover-bg:#487b60;--ar-btn-hover-border-color:#487b60;--ar-btn-active-bg:#487b60;--ar-btn-active-border-color:#487b60;--ar-btn-disabled-bg:#619479;--ar-btn-disabled-border-color:#619479;}.btn-danger{--ar-btn-bg:#946163;--ar-btn-border-color:#946163;--ar-btn-hover-bg:#7b484a;--ar-btn-hover-border-color:#7b484a;--ar-btn-active-bg:#7b484a;--ar-btn-active-border-color:#7b484a;--ar-btn-disabled-bg:#946163;--ar-btn-disabled-border-color:#946163;}.btn-outline-primary{--ar-btn-color:#796194;--ar-btn-border-color:#796194;--ar-btn-hover-bg:#796194;--ar-btn-hover-border-color:#796194;--ar-btn-active-bg:#796194;--ar-btn-active-border-color:#796194;--ar-btn-disabled-color:#796194;--ar-btn-disabled-border-color:#796194;}.btn-outline-warning{--ar-btn-color:#947961;--ar-btn-border-color:#947961;--ar-btn-hover-bg:#947961;--ar-btn-hover-border-color:#947961;--ar-btn-active-bg:#947961;--ar-btn-active-border-color:#947961;--ar-btn-disabled-color:#947961;--ar-btn-disabled-border-color:#947961;}.btn-outline-info{--ar-btn-color:#5B6F95;--ar-btn-border-color:#5B6F95;--ar-btn-hover-bg:#5B6F95;--ar-btn-hover-border-color:#5B6F95;--ar-btn-active-bg:#5B6F95;--ar-btn-active-border-color:#5B6F95;--ar-btn-disabled-color:#5B6F95;--ar-btn-disabled-border-color:#5B6F95;}.btn-outline-success{--ar-btn-color:#619479;--ar-btn-border-color:#619479;--ar-btn-hover-bg:#619479;--ar-btn-hover-border-color:#619479;--ar-btn-active-bg:#619479;--ar-btn-active-border-color:#619479;--ar-btn-disabled-color:#619479;--ar-btn-disabled-border-color:#619479;}.btn-outline-danger{--ar-btn-color:#946163;--ar-btn-border-color:#946163;--ar-btn-hover-bg:#946163;--ar-btn-hover-border-color:#946163;--ar-btn-active-bg:#946163;--ar-btn-active-border-color:#946163;--ar-btn-disabled-color:#946163;--ar-btn-disabled-border-color:#946163;}");
                $("#custom_font").attr('href', 'https://fonts.googleapis.com/css2?family=Raleway:wght@400&display=swap');
                localStorage.setItem("cust_font", "https://fonts.googleapis.com/css2?family=Raleway:wght@400&display=swap");
            });
            $("#theme-set2").click(function () {
                $('#badge1').html('');
                $('#badge2').html('Active');
                $('#badge3').html('');
                $('#badge4').html('');
                localStorage.setItem("badge", "2");

                $('#custom_theme').html(':root{--ar-primary:#825061;--ar-primary-rgb:130,80,97;--ar-warning-rgb:91,149,129;--ar-info-rgb:91,111,149;--ar-success-rgb:;--ar-border-radius:0.5rem;--ar-link-color:#825061;--ar-link-hover-color:#693748;--ar-danger:#95645B;--ar-danger-rgb:149,100,91;--ar-body-font-family:"Poppins",sans-serif;}.btn-primary{--ar-btn-bg:#825061;--ar-btn-border-color:#825061;--ar-btn-hover-bg:#693748;--ar-btn-hover-border-color:#693748;--ar-btn-active-bg:#693748;--ar-btn-active-border-color:#693748;--ar-btn-disabled-bg:#825061;--ar-btn-disabled-border-color:#825061;}.btn-warning{--ar-btn-bg:#5B9581;--ar-btn-border-color:#5B9581;--ar-btn-hover-bg:#427c68;--ar-btn-hover-border-color:#427c68;--ar-btn-active-bg:#427c68;--ar-btn-active-border-color:#427c68;--ar-btn-disabled-bg:#5B9581;--ar-btn-disabled-border-color:#5B9581;}.btn-info{--ar-btn-bg:#5B6F95;--ar-btn-border-color:#5B6F95;--ar-btn-hover-bg:#42567c;--ar-btn-hover-border-color:#42567c;--ar-btn-active-bg:#42567c;--ar-btn-active-border-color:#42567c;--ar-btn-disabled-bg:#5B6F95;--ar-btn-disabled-border-color:#5B6F95;}.btn-success{--ar-btn-bg:#6F955B;--ar-btn-border-color:#6F955B;--ar-btn-hover-bg:#567c42;--ar-btn-hover-border-color:#567c42;--ar-btn-active-bg:#567c42;--ar-btn-active-border-color:#567c42;--ar-btn-disabled-bg:#6F955B;--ar-btn-disabled-border-color:#6F955B;}.btn-danger{--ar-btn-bg:#95645B;--ar-btn-border-color:#95645B;--ar-btn-hover-bg:#7c4b42;--ar-btn-hover-border-color:#7c4b42;--ar-btn-active-bg:#7c4b42;--ar-btn-active-border-color:#7c4b42;--ar-btn-disabled-bg:#95645B;--ar-btn-disabled-border-color:#95645B;}.btn-outline-primary{--ar-btn-color:#825061;--ar-btn-border-color:#825061;--ar-btn-hover-bg:#825061;--ar-btn-hover-border-color:#825061;--ar-btn-active-bg:#825061;--ar-btn-active-border-color:#825061;--ar-btn-disabled-color:#825061;--ar-btn-disabled-border-color:#825061;}.btn-outline-warning{--ar-btn-color:#5B9581;--ar-btn-border-color:#5B9581;--ar-btn-hover-bg:#5B9581;--ar-btn-hover-border-color:#5B9581;--ar-btn-active-bg:#5B9581;--ar-btn-active-border-color:#5B9581;--ar-btn-disabled-color:#5B9581;--ar-btn-disabled-border-color:#5B9581;}.btn-outline-info{--ar-btn-color:#5B6F95;--ar-btn-border-color:#5B6F95;--ar-btn-hover-bg:#5B6F95;--ar-btn-hover-border-color:#5B6F95;--ar-btn-active-bg:#5B6F95;--ar-btn-active-border-color:#5B6F95;--ar-btn-disabled-color:#5B6F95;--ar-btn-disabled-border-color:#5B6F95;}.btn-outline-success{--ar-btn-color:#6F955B;--ar-btn-border-color:#6F955B;--ar-btn-hover-bg:#6F955B;--ar-btn-hover-border-color:#6F955B;--ar-btn-active-bg:#6F955B;--ar-btn-active-border-color:#6F955B;--ar-btn-disabled-color:#6F955B;--ar-btn-disabled-border-color:#6F955B;}.btn-outline-danger{--ar-btn-color:#95645B;--ar-btn-border-color:#95645B;--ar-btn-hover-bg:#95645B;--ar-btn-hover-border-color:#95645B;--ar-btn-active-bg:#95645B;--ar-btn-active-border-color:#95645B;--ar-btn-disabled-color:#95645B;--ar-btn-disabled-border-color:#95645B;}');
                localStorage.setItem("cust_theme", ":root{--ar-primary:#825061;--ar-primary-rgb:130,80,97;--ar-warning-rgb:91,149,129;--ar-info-rgb:91,111,149;--ar-success-rgb:;--ar-border-radius:0.5rem;--ar-link-color:#825061;--ar-link-hover-color:#693748;--ar-danger:#95645B;--ar-danger-rgb:149,100,91;--ar-body-font-family:\"Poppins\",sans-serif;}.btn-primary{--ar-btn-bg:#825061;--ar-btn-border-color:#825061;--ar-btn-hover-bg:#693748;--ar-btn-hover-border-color:#693748;--ar-btn-active-bg:#693748;--ar-btn-active-border-color:#693748;--ar-btn-disabled-bg:#825061;--ar-btn-disabled-border-color:#825061;}.btn-warning{--ar-btn-bg:#5B9581;--ar-btn-border-color:#5B9581;--ar-btn-hover-bg:#427c68;--ar-btn-hover-border-color:#427c68;--ar-btn-active-bg:#427c68;--ar-btn-active-border-color:#427c68;--ar-btn-disabled-bg:#5B9581;--ar-btn-disabled-border-color:#5B9581;}.btn-info{--ar-btn-bg:#5B6F95;--ar-btn-border-color:#5B6F95;--ar-btn-hover-bg:#42567c;--ar-btn-hover-border-color:#42567c;--ar-btn-active-bg:#42567c;--ar-btn-active-border-color:#42567c;--ar-btn-disabled-bg:#5B6F95;--ar-btn-disabled-border-color:#5B6F95;}.btn-success{--ar-btn-bg:#6F955B;--ar-btn-border-color:#6F955B;--ar-btn-hover-bg:#567c42;--ar-btn-hover-border-color:#567c42;--ar-btn-active-bg:#567c42;--ar-btn-active-border-color:#567c42;--ar-btn-disabled-bg:#6F955B;--ar-btn-disabled-border-color:#6F955B;}.btn-danger{--ar-btn-bg:#95645B;--ar-btn-border-color:#95645B;--ar-btn-hover-bg:#7c4b42;--ar-btn-hover-border-color:#7c4b42;--ar-btn-active-bg:#7c4b42;--ar-btn-active-border-color:#7c4b42;--ar-btn-disabled-bg:#95645B;--ar-btn-disabled-border-color:#95645B;}.btn-outline-primary{--ar-btn-color:#825061;--ar-btn-border-color:#825061;--ar-btn-hover-bg:#825061;--ar-btn-hover-border-color:#825061;--ar-btn-active-bg:#825061;--ar-btn-active-border-color:#825061;--ar-btn-disabled-color:#825061;--ar-btn-disabled-border-color:#825061;}.btn-outline-warning{--ar-btn-color:#5B9581;--ar-btn-border-color:#5B9581;--ar-btn-hover-bg:#5B9581;--ar-btn-hover-border-color:#5B9581;--ar-btn-active-bg:#5B9581;--ar-btn-active-border-color:#5B9581;--ar-btn-disabled-color:#5B9581;--ar-btn-disabled-border-color:#5B9581;}.btn-outline-info{--ar-btn-color:#5B6F95;--ar-btn-border-color:#5B6F95;--ar-btn-hover-bg:#5B6F95;--ar-btn-hover-border-color:#5B6F95;--ar-btn-active-bg:#5B6F95;--ar-btn-active-border-color:#5B6F95;--ar-btn-disabled-color:#5B6F95;--ar-btn-disabled-border-color:#5B6F95;}.btn-outline-success{--ar-btn-color:#6F955B;--ar-btn-border-color:#6F955B;--ar-btn-hover-bg:#6F955B;--ar-btn-hover-border-color:#6F955B;--ar-btn-active-bg:#6F955B;--ar-btn-active-border-color:#6F955B;--ar-btn-disabled-color:#6F955B;--ar-btn-disabled-border-color:#6F955B;}.btn-outline-danger{--ar-btn-color:#95645B;--ar-btn-border-color:#95645B;--ar-btn-hover-bg:#95645B;--ar-btn-hover-border-color:#95645B;--ar-btn-active-bg:#95645B;--ar-btn-active-border-color:#95645B;--ar-btn-disabled-color:#95645B;--ar-btn-disabled-border-color:#95645B;}");
                $("#custom_font").attr('href', 'https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400&display=swap');
                localStorage.setItem("cust_font", "https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400&display=swap");
            });

            $("#theme-set3").click(function () {
                $('#badge1').html('');
                $('#badge2').html('');
                $('#badge3').html('Active');
                $('#badge4').html('');
                localStorage.setItem("badge", "3");
                $('#custom_theme').html(':root{--ar-primary:#66818f;--ar-primary-rgb:102,129,143;--ar-link-color:#66818f;--ar-link-hover-color:#4d6876;--ar-warning:#8f7466;--ar-warning-rgb:143,116,102;--ar-success:#68aca2;--ar-success-rgb:104,172,162;--ar-danger:#b85656;--ar-danger-rgb:184,86,86;--ar-border-radius:0rem;--ar-body-font-family:"Raleway",sans-serif;--ar-body-font-size:1rem;}.btn-primary{--ar-btn-bg:#66818f;--ar-btn-border-color:#66818f;--ar-btn-hover-bg:#4d6876;--ar-btn-hover-border-color:#4d6876;--ar-btn-active-bg:#4d6876;--ar-btn-active-border-color:#4d6876;--ar-btn-disabled-bg:#66818f;--ar-btn-disabled-border-color:#66818f;}.btn-warning{--ar-btn-bg:#8f7466;--ar-btn-border-color:#8f7466;--ar-btn-hover-bg:#765b4d;--ar-btn-hover-border-color:#765b4d;--ar-btn-active-bg:#765b4d;--ar-btn-active-border-color:#765b4d;--ar-btn-disabled-bg:#8f7466;--ar-btn-disabled-border-color:#8f7466;}.btn-success{--ar-btn-bg:#68aca2;--ar-btn-border-color:#68aca2;--ar-btn-hover-bg:#4f9389;--ar-btn-hover-border-color:#4f9389;--ar-btn-active-bg:#4f9389;--ar-btn-active-border-color:#4f9389;--ar-btn-disabled-bg:#68aca2;--ar-btn-disabled-border-color:#68aca2;}.btn-danger{--ar-btn-bg:#b85656;--ar-btn-border-color:#b85656;--ar-btn-hover-bg:#9f3d3d;--ar-btn-hover-border-color:#9f3d3d;--ar-btn-active-bg:#9f3d3d;--ar-btn-active-border-color:#9f3d3d;--ar-btn-disabled-bg:#b85656;--ar-btn-disabled-border-color:#b85656;}.btn-outline-primary{--ar-btn-color:#66818f;--ar-btn-border-color:#66818f;--ar-btn-hover-bg:#66818f;--ar-btn-hover-border-color:#66818f;--ar-btn-active-bg:#66818f;--ar-btn-active-border-color:#66818f;--ar-btn-disabled-color:#66818f;--ar-btn-disabled-border-color:#66818f;}.btn-outline-warning{--ar-btn-color:#8f7466;--ar-btn-border-color:#8f7466;--ar-btn-hover-bg:#8f7466;--ar-btn-hover-border-color:#8f7466;--ar-btn-active-bg:#8f7466;--ar-btn-active-border-color:#8f7466;--ar-btn-disabled-color:#8f7466;--ar-btn-disabled-border-color:#8f7466;}.btn-outline-success{--ar-btn-color:#68aca2;--ar-btn-border-color:#68aca2;--ar-btn-hover-bg:#68aca2;--ar-btn-hover-border-color:#68aca2;--ar-btn-active-bg:#68aca2;--ar-btn-active-border-color:#68aca2;--ar-btn-disabled-color:#68aca2;--ar-btn-disabled-border-color:#68aca2;}.btn-outline-danger{--ar-btn-color:#b85656;--ar-btn-border-color:#b85656;--ar-btn-hover-bg:#b85656;--ar-btn-hover-border-color:#b85656;--ar-btn-active-bg:#b85656;--ar-btn-active-border-color:#b85656;--ar-btn-disabled-color:#b85656;--ar-btn-disabled-border-color:#b85656;}');
                localStorage.setItem("cust_theme", ":root{--ar-primary:#66818f;--ar-primary-rgb:102,129,143;--ar-link-color:#66818f;--ar-link-hover-color:#4d6876;--ar-warning:#8f7466;--ar-warning-rgb:143,116,102;--ar-success:#68aca2;--ar-success-rgb:104,172,162;--ar-danger:#b85656;--ar-danger-rgb:184,86,86;--ar-border-radius:0rem;--ar-body-font-family:\"Raleway\",sans-serif;--ar-body-font-size:1rem;}.btn-primary{--ar-btn-bg:#66818f;--ar-btn-border-color:#66818f;--ar-btn-hover-bg:#4d6876;--ar-btn-hover-border-color:#4d6876;--ar-btn-active-bg:#4d6876;--ar-btn-active-border-color:#4d6876;--ar-btn-disabled-bg:#66818f;--ar-btn-disabled-border-color:#66818f;}.btn-warning{--ar-btn-bg:#8f7466;--ar-btn-border-color:#8f7466;--ar-btn-hover-bg:#765b4d;--ar-btn-hover-border-color:#765b4d;--ar-btn-active-bg:#765b4d;--ar-btn-active-border-color:#765b4d;--ar-btn-disabled-bg:#8f7466;--ar-btn-disabled-border-color:#8f7466;}.btn-success{--ar-btn-bg:#68aca2;--ar-btn-border-color:#68aca2;--ar-btn-hover-bg:#4f9389;--ar-btn-hover-border-color:#4f9389;--ar-btn-active-bg:#4f9389;--ar-btn-active-border-color:#4f9389;--ar-btn-disabled-bg:#68aca2;--ar-btn-disabled-border-color:#68aca2;}.btn-danger{--ar-btn-bg:#b85656;--ar-btn-border-color:#b85656;--ar-btn-hover-bg:#9f3d3d;--ar-btn-hover-border-color:#9f3d3d;--ar-btn-active-bg:#9f3d3d;--ar-btn-active-border-color:#9f3d3d;--ar-btn-disabled-bg:#b85656;--ar-btn-disabled-border-color:#b85656;}.btn-outline-primary{--ar-btn-color:#66818f;--ar-btn-border-color:#66818f;--ar-btn-hover-bg:#66818f;--ar-btn-hover-border-color:#66818f;--ar-btn-active-bg:#66818f;--ar-btn-active-border-color:#66818f;--ar-btn-disabled-color:#66818f;--ar-btn-disabled-border-color:#66818f;}.btn-outline-warning{--ar-btn-color:#8f7466;--ar-btn-border-color:#8f7466;--ar-btn-hover-bg:#8f7466;--ar-btn-hover-border-color:#8f7466;--ar-btn-active-bg:#8f7466;--ar-btn-active-border-color:#8f7466;--ar-btn-disabled-color:#8f7466;--ar-btn-disabled-border-color:#8f7466;}.btn-outline-success{--ar-btn-color:#68aca2;--ar-btn-border-color:#68aca2;--ar-btn-hover-bg:#68aca2;--ar-btn-hover-border-color:#68aca2;--ar-btn-active-bg:#68aca2;--ar-btn-active-border-color:#68aca2;--ar-btn-disabled-color:#68aca2;--ar-btn-disabled-border-color:#68aca2;}.btn-outline-danger{--ar-btn-color:#b85656;--ar-btn-border-color:#b85656;--ar-btn-hover-bg:#b85656;--ar-btn-hover-border-color:#b85656;--ar-btn-active-bg:#b85656;--ar-btn-active-border-color:#b85656;--ar-btn-disabled-color:#b85656;--ar-btn-disabled-border-color:#b85656;}");
                $("#custom_font").attr('href', 'https://fonts.googleapis.com/css2?family=Hind:wght@300&display=swap');
                localStorage.setItem("cust_font", "https://fonts.googleapis.com/css2?family=Hind:wght@300&display=swap ");
            });

            $("#theme-reset").click(function () {
                $('#badge1').html('Active');
                $('#badge2').html('');
                $('#badge3').html('');
                $('#badge4').html('');
                localStorage.setItem("badge", "1");
                $('#custom_theme').html('');
                localStorage.removeItem("cust_theme");
                $("#custom_font").attr('href', '');
                localStorage.removeItem("cust_font");
            });
        });

        $("#theme-mode").change(function () {
            if (this.checked) {
                $("#theme-mode").prop("checked", true);
                root.classList.add('dark-mode');
                localStorage.setItem("mode", "dark")
            }
            else {
                $("#theme-mode").prop("checked", false);
                root.classList.remove('dark-mode');
                localStorage.removeItem("mode");
            }
        });
        let elem_badge = localStorage.getItem("badge");
        if (elem_badge === undefined || elem_badge === "" || elem_badge === "1") {
            $('#badge1').html('Active'); $('#badge2').html(''); $('#badge3').html(''); $('#badge4').html('');
        }
        else if (elem_badge === "2") {
            $('#badge1').html(''); $('#badge2').html('Active'); $('#badge3').html(''); $('#badge4').html('');
        }
        else if (elem_badge === "3") {
            $('#badge1').html(''); $('#badge2').html(''); $('#badge3').html('Active'); $('#badge4').html('');
        }
    </script>
</asp:Content>

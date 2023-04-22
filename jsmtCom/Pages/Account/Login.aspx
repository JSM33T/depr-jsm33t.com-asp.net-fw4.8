<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="jsmtcom.Account.Login" EnableViewState="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log In</title>
    <meta name="description" content="Login Page">
    <meta name="keywords" content="jsm33t,login">
    <meta name="author" content="jsm33t">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" sizes="180x180" href="/Content/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/Content/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/Content/favicon/favicon-16x16.png">
    <link rel="manifest" href="/Content/favicon/site.webmanifest">
    <link rel="mask-icon" color="#6366f1" href="/Content/favicon/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#080032">
    <meta name="msapplication-config" content="/Content/favicon/browserconfig.xml">
    <meta name="theme-color" content="white">

    <script>
        let mode = window.localStorage.getItem('mode'),
            root = document.getElementsByTagName('html')[0];
        if (mode !== undefined && mode === 'dark') {
            root.classList.add('dark-mode');
        } else {
            root.classList.remove('dark-mode');
        }
    </script>
    <script>
        (function () {
            window.onload = function () {

                const preloader = document.querySelector('.page-loading');
                preloader.classList.remove('active');
                setTimeout(function () {
                    preloader.remove();
                }, 1000);

                let elem_theme = localStorage.getItem("cust_theme");
                if (elem_theme !== undefined && elem_theme !== "") { document.getElementById("custom_theme").innerHTML = elem_theme; }
                let elem_font = localStorage.getItem("cust_font");
                if (elem_font !== undefined && elem_font !== "") {
                    var a = document.getElementById('custom_font');
                    a.href = elem_font;
                }
            };
        })();

    </script>
    <style>
        input:-webkit-autofill,
        input:-webkit-autofill:hover,
        input:-webkit-autofill:focus,
        input:-webkit-autofill:active {
            -webkit-box-shadow: 0 0 0 30px #121519 inset !important;
        }
        /*Change text in autofill textbox*/
        input:-webkit-autofill {
            -webkit-text-fill-color: var(--ar-primary) !important;
        }

        .page-loading {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100%;
            -webkit-transition: all .4s .2s ease-in-out;
            transition: all .4s .2s ease-in-out;
            background-color: #fff;
            opacity: 0;
            visibility: hidden;
            z-index: 9999;
        }

        .dark-mode .page-loading {
            background-color: #121519;
        }

        .page-loading.active {
            opacity: 1;
            visibility: visible;
        }

        .page-loading-inner {
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            text-align: center;
            -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
            -webkit-transition: opacity .2s ease-in-out;
            transition: opacity .2s ease-in-out;
            opacity: 0;
        }

        .page-loading.active > .page-loading-inner {
            opacity: 1;
        }

        .page-loading-inner > span {
            display: block;
            font-family: 'Inter', sans-serif;
            font-size: 1rem;
            font-weight: normal;
            color: #6f788b;
        }

        .dark-mode .page-loading-inner > span {
            color: #fff;
            opacity: .6;
        }

        .page-spinner {
            display: inline-block;
            width: 2.75rem;
            height: 2.75rem;
            margin-bottom: .75rem;
            vertical-align: text-bottom;
            background-color: #d7dde2;
            border-radius: 50%;
            opacity: 0;
            -webkit-animation: spinner .75s linear infinite;
            animation: spinner .75s linear infinite;
        }

        .dark-mode .page-spinner {
            background-color: rgba(255,255,255,.25);
        }

        @-webkit-keyframes spinner {
            0% {
                -webkit-transform: scale(0);
                transform: scale(0);
            }

            50% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }

        @keyframes spinner {
            0% {
                -webkit-transform: scale(0);
                transform: scale(0);
            }

            50% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }
    </style>


    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400&display=swap" rel="stylesheet">
    <link rel="stylesheet" id="custom_font">
    <link rel="stylesheet" media="screen" href="/Content/css/theme.min.css">

    <style>
        :root {
            --ar-primary: #796194;
            --ar-primary-rgb: 121,97,148;
            --ar-warning-rgb: 148,121,97;
            --ar-info-rgb: 91,111,149;
            --ar-success-rgb: 97,148,121;
            --ar-border-radius: 0.5rem;
            --ar-link-color: #796194;
            --ar-link-hover-color: #60487b;
            --ar-danger: #946163;
            --ar-danger-rgb: 148,97,99;
            --ar-body-font-family: "Raleway",sans-serif;
            --ar-warning: #947961;
            --ar-success: #619479;
        }

        .btn-primary {
            --ar-btn-bg: #796194;
            --ar-btn-border-color: #796194;
            --ar-btn-hover-bg: #60487b;
            --ar-btn-hover-border-color: #60487b;
            --ar-btn-active-bg: #60487b;
            --ar-btn-active-border-color: #60487b;
            --ar-btn-disabled-bg: #796194;
            --ar-btn-disabled-border-color: #796194;
        }

        .btn-warning {
            --ar-btn-bg: #947961;
            --ar-btn-border-color: #947961;
            --ar-btn-hover-bg: #7b6048;
            --ar-btn-hover-border-color: #7b6048;
            --ar-btn-active-bg: #7b6048;
            --ar-btn-active-border-color: #7b6048;
            --ar-btn-disabled-bg: #947961;
            --ar-btn-disabled-border-color: #947961;
        }

        .btn-info {
            --ar-btn-bg: #5B6F95;
            --ar-btn-border-color: #5B6F95;
            --ar-btn-hover-bg: #42567c;
            --ar-btn-hover-border-color: #42567c;
            --ar-btn-active-bg: #42567c;
            --ar-btn-active-border-color: #42567c;
            --ar-btn-disabled-bg: #5B6F95;
            --ar-btn-disabled-border-color: #5B6F95;
        }

        .btn-success {
            --ar-btn-bg: #619479;
            --ar-btn-border-color: #619479;
            --ar-btn-hover-bg: #487b60;
            --ar-btn-hover-border-color: #487b60;
            --ar-btn-active-bg: #487b60;
            --ar-btn-active-border-color: #487b60;
            --ar-btn-disabled-bg: #619479;
            --ar-btn-disabled-border-color: #619479;
        }

        .btn-danger {
            --ar-btn-bg: #946163;
            --ar-btn-border-color: #946163;
            --ar-btn-hover-bg: #7b484a;
            --ar-btn-hover-border-color: #7b484a;
            --ar-btn-active-bg: #7b484a;
            --ar-btn-active-border-color: #7b484a;
            --ar-btn-disabled-bg: #946163;
            --ar-btn-disabled-border-color: #946163;
        }

        .btn-outline-primary {
            --ar-btn-color: #796194;
            --ar-btn-border-color: #796194;
            --ar-btn-hover-bg: #796194;
            --ar-btn-hover-border-color: #796194;
            --ar-btn-active-bg: #796194;
            --ar-btn-active-border-color: #796194;
            --ar-btn-disabled-color: #796194;
            --ar-btn-disabled-border-color: #796194;
        }

        .btn-outline-warning {
            --ar-btn-color: #947961;
            --ar-btn-border-color: #947961;
            --ar-btn-hover-bg: #947961;
            --ar-btn-hover-border-color: #947961;
            --ar-btn-active-bg: #947961;
            --ar-btn-active-border-color: #947961;
            --ar-btn-disabled-color: #947961;
            --ar-btn-disabled-border-color: #947961;
        }

        .btn-outline-info {
            --ar-btn-color: #5B6F95;
            --ar-btn-border-color: #5B6F95;
            --ar-btn-hover-bg: #5B6F95;
            --ar-btn-hover-border-color: #5B6F95;
            --ar-btn-active-bg: #5B6F95;
            --ar-btn-active-border-color: #5B6F95;
            --ar-btn-disabled-color: #5B6F95;
            --ar-btn-disabled-border-color: #5B6F95;
        }

        .btn-outline-success {
            --ar-btn-color: #619479;
            --ar-btn-border-color: #619479;
            --ar-btn-hover-bg: #619479;
            --ar-btn-hover-border-color: #619479;
            --ar-btn-active-bg: #619479;
            --ar-btn-active-border-color: #619479;
            --ar-btn-disabled-color: #619479;
            --ar-btn-disabled-border-color: #619479;
        }

        .btn-outline-danger {
            --ar-btn-color: #946163;
            --ar-btn-border-color: #946163;
            --ar-btn-hover-bg: #946163;
            --ar-btn-hover-border-color: #946163;
            --ar-btn-active-bg: #946163;
            --ar-btn-active-border-color: #946163;
            --ar-btn-disabled-color: #946163;
            --ar-btn-disabled-border-color: #946163;
        }

        body {
            --cursor-stroke: var(--ar-primary);
            --cursor-fill: none;
            --cursor-stroke-width: 1px;
        }
    </style>
    <style id="custom_theme"></style>
    <script src="../../Scripts/jquery-3.6.0.min.js"></script>

</head>

<body>
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div>
            <span>Loading...</span>
        </div>
    </div>
    
    <main class="page-wrapper">
        <form runat="server" class="d-lg-flex position-relative h-100">
            <asp:ScriptManager runat="server" EnableCdn="true">
                <Scripts>
                    <asp:ScriptReference Name="MsAjaxBundle" />
                </Scripts>
            </asp:ScriptManager>
            <!-- Home button-->
            <a class="text-nav btn btn-icon bg-light border rounded-circle position-absolute top-0 end-0 p-0 mt-3 me-3 mt-sm-4 me-sm-4" href="/" data-bs-toggle="tooltip" data-bs-placement="left" title="Back to home"><i class="ai-home"></i></a>
            <!-- Sign in form-->
            <div class="d-flex flex-column align-items-center w-lg-50 h-100 px-3 px-lg-5 pt-5">
                <div class="w-100 mt-auto" style="max-width: 526px;">
                    <h1>Log In!</h1>
                    <p class="pb-3 mb-3 mb-lg-4">Don't have an account yet?&nbsp;&nbsp;<a href='/account/signup'>Register here!</a></p>
                    <div novalidate="novalidate">
                        <div class="pb-3 mb-3">
                            <div class="position-relative">
                                <i class="ai-mail fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                                <input class="form-control form-control-lg ps-5 bindenter" type="text" placeholder="User Id" id="user_id" maxlength="20" runat="server">
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="position-relative">
                                <i class="ai-lock-closed fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                                <div class="password-toggle">
                                    <i class="ai-lock-closed fs-lg position-absolute top-50 start-0 translate-middle-y ms-3"></i>
                                    <input class="form-control form-control-lg ps-5 bindenter" type="password" placeholder="Password" id="password" maxlength="20" runat="server">
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                        <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <button type="button" id="loginbutton" onclick="login_trigger()" class="btn btn-lg btn-primary w-100 mb-4">Log In</button>
                        <asp:UpdatePanel ID="login_btn" runat="server">
                            <ContentTemplate>
                                <asp:Button Text="Login" ID="btn_login" OnClick="LoginClick" runat="server" hidden="hidden"/>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="stat_panel" runat="server">
                            <ContentTemplate>
                                <asp:Literal ID="loginstat" runat="server" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    
                    </div>
            </div>
            <p class="w-100 fs-sm pt-5 mt-auto mb-5" style="max-width: 526px;"><span class="text-muted">&co. Made by</span><a class="nav-link d-inline-block p-0 ms-1" href="https://createx.studio/" target="_blank" rel="noopener">Createx Studio</a></p>
            </div>

            <div class="w-50 bg-size-cover bg-repeat-0 bg-position-center" style="background-image: url(/Content/img/account/cover.jpg);"></div>
        </form>
        <%--   </div>--%>
    </main>

    <a class="btn-scroll-top" href="#top" data-scroll="data-scroll">
        <svg viewBox="0 0 40 40" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <circle cx="20" cy="20" r="19" fill="none" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10"></circle>
        </svg><i class="ai-arrow-up"></i>
    </a>
    <script>
        $(document).ready(function () {
            $('.bindenter').keypress(function (event) {
                if (event.keyCode === 10 || event.keyCode === 13) {
                    event.preventDefault();
                    login_trigger();
                }
            });
        });
        function login_trigger() {
            $("#loginbutton").html('<span class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span>Logging In');
            $("#loginbutton").attr("class", "btn btn-lg btn-primary w-100 mb-4 pe-none");
            $('#btn_login').click();
        }

        function pageLoad() {
            $('#loginbutton').html('Log In');
            $("#loginbutton").attr("class", "btn btn-lg btn-primary w-100 mb-4");
            setTimeout(() => { $("#stat_panel").html(''); }, 4000);
        }

    </script>
    <script src="/Content/library/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
     <script src="/Content/library/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="/Content/js/theme.min.js"></script>
</body>
</html>

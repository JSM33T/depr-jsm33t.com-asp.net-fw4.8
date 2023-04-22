<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="jsmtcom.Pages.Site._404" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>404!!</title>
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

    <style>
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

        .page-loading.active>.page-loading-inner {
            opacity: 1;
        }

        .page-loading-inner>span {
            display: block;
            font-family: 'Inter', sans-serif;
            font-size: 1rem;
            font-weight: normal;
            color: #6f788b;
        }

        .dark-mode .page-loading-inner>span {
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
            background-color: rgba(255, 255, 255, .25);
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

    <script>
        (function () {
            window.onload = function () {
                const preloader = document.querySelector('.page-loading');
                preloader.classList.remove('active');
                setTimeout(function () {
                    preloader.remove();
                }, 1000);
            };
        })();

    </script>
    <link rel="stylesheet" media="screen" href="/Content/css/theme.min.css">
</head>

<body>
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div>
            <span>Loading...</span>
        </div>
    </div>
    <main class="page-wrapper">
        <div class="container d-flex flex-column justify-content-center min-vh-100 py-5">
            <lottie-player class="d-dark-mode-none mt-n5" src="/Content/json/animation-404-light.json"
                background="transparent" speed="1" loop autoplay>
            </lottie-player>
            <lottie-player class="d-none d-dark-mode-block mt-n5" src="/Content/json/animation-404-dark.json"
                background="transparent" speed="1" loop autoplay>
            </lottie-player>
            <div class="text-center pt-4 mt-lg-2">
                <h2 class="display-5">Oopsie!!</h2>
                <a class="btn btn-lg rounded-0 btn-danger" href="/">Go to homepage</a>
            </div>
        </div>
    </main>

    <script src="/Content/library/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/Content/library/lottiefiles/lottie-player/dist/lottie-player.js"></script>
    <script src="/Content/js/theme.min.js"></script>

</body>

</html>

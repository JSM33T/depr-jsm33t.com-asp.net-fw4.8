﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bare.aspx.cs" Inherits="jsmtcom.PlayGround.bare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}
body {
  width: 100vw;
  height: 100vh;
  background: #f2f4f6;
  overflow: hidden;
}
ul {
  list-style: none;
}
.context-menu { 
  position: absolute; 
} 
.menu {
  display: flex;
  flex-direction: column;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 10px 20px rgb(64 64 64 / 5%);
  padding: 10px 0;
}
.menu > li > a {
  font: inherit;
  border: 0;
  padding: 10px 30px 10px 15px;
  width: 100%;
  display: flex;
  align-items: center;
  position: relative;
  text-decoration: unset;
  color: #000;
  font-weight: 500;
  transition: 0.5s linear;
  -webkit-transition: 0.5s linear;
  -moz-transition: 0.5s linear;
  -ms-transition: 0.5s linear;
  -o-transition: 0.5s linear;
}
.menu > li > a:hover {
  background:#f1f3f7;
  color: #4b00ff;
}
.menu > li > a > i {
  padding-right: 10px;
}
.menu > li.trash > a:hover {
  color: red;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="contextMenu" class="context-menu" style="display: none">
            <ul class="menu">
                <li class="share"><a href="#"><i class="fa fa-share" aria-hidden="true"></i>Share</a></li>
                <li class="rename"><a href="#"><i class="fa fa-pencil" aria-hidden="true"></i>Rename</a></li>
                <li class="link"><a href="#"><i class="fa fa-link" aria-hidden="true"></i>Copy Link Address</a></li>
                <li class="copy"><a href="#"><i class="fa fa-copy" aria-hidden="true"></i>Copy to</a></li>
                <li class="paste"><a href="#"><i class="fa fa-paste" aria-hidden="true"></i>Move to</a></li>
                <li class="download"><a href="#"><i class="fa fa-download" aria-hidden="true"></i>Download</a></li>
                <li class="trash"><a href="#"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a></li>
            </ul>
        </div>

        <script>
       document.onclick = hideMenu; 
       document.oncontextmenu = rightClick; 

        function hideMenu() { 
            document.getElementById("contextMenu") 
                    .style.display = "none" 
        } 

        function rightClick(e) { 
            e.preventDefault(); 

            if (document.getElementById("contextMenu") .style.display == "block"){ 
                hideMenu(); 
            }else{ 
                var menu = document.getElementById("contextMenu")      
                menu.style.display = 'block'; 
                menu.style.left = e.pageX + "px"; 
                menu.style.top = e.pageY + "px"; 
            } 
        } 
        </script>
    </form>
</body>
</html>

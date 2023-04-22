<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="playground.aspx.cs" Inherits="jsmtcom.Pages.Apps.playground" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PlayGround</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid p-5 bg-primary text-white text-center">
            <h1>App heading</h1>
            <p>Description</p>
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm-4">
                    <input class="form" value="" id="place1" placeholder="init" runat="server" />
                </div>
                <div class="col-sm-4">
                    <input class="form" value="" id="place2" placeholder="init" runat="server" />
                </div>
            </div>

            <div class="row">
                <asp:Button ID="Button1" runat="server" OnClick="submitClick" Text="Button" />
            </div>

        </div>

    </form>
</body>
</html>

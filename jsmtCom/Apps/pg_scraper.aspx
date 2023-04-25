<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pg_scraper.aspx.cs" Inherits="jsmtcom.Apps.pg_scraper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" EnableCdn="true">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
        <div><i class="something"></i>
            <asp:updatepanel ID="panel1" runat="server">
                <contenttemplate>
           
            <asp:button ID="btn" runat="server" Text="button text" OnClick="TaskClick"/>

                    <asp:Literal ID="stat" runat="server" />
                    </contenttemplate>
            </asp:updatepanel>
        </div>
    </form>
</body>
</html>

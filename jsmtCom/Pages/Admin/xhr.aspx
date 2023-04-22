<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xhr.aspx.cs" Inherits="jsmtcom.Pages.Admin.xhr" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title></title>
        </head>
        <body>
            
            <form id="form1" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <input type="button" id="btbt" onclick="funct()" value="Press Here"/>

            </form>

            <script>
                function funct() {
                    
                        var parameter1 = "value1";
                        var parameter2 = "value2";
                        var url = "/Pages/Admin/xhr.aspx/MyWebMethod";
                        var data = JSON.stringify({ parameter1: parameter1, parameter2: parameter2 });
                        var xhr = new XMLHttpRequest();
                        xhr.open("POST", url, true);
                        xhr.setRequestHeader("Content-Type", "application/json");
                        xhr.onreadystatechange = function () {
                            if (xhr.readyState === 4 && xhr.status === 200) {
                                var result = JSON.parse(xhr.responseText);
                                console.log(result);
                            }
                        };
                        xhr.send(data);
                  
                }

            </script>
        </body>
    </html>

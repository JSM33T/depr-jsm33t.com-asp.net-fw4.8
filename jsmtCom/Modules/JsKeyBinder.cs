using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace jsmtcom.Modules
{
    public class JsKeyBinder
    {
        protected static string KeyBinder_Function(string trigger, string target,string key)
        {
            StringBuilder jsCode = new StringBuilder();

            jsCode.Append("$('"+trigger+"').keypress(function(event) {");
            jsCode.Append("if (event.keyCode === "+ key +") {");
            jsCode.Append(" event.preventDefault();");
            jsCode.Append(""+ target +";");
            jsCode.Append("  }\r\n});");

            string result = jsCode.ToString();
            return result;
        }
        protected static string EnterBinder_Function(string trigger, string target)
        {
            StringBuilder jsCode = new StringBuilder();

            jsCode.Append("$('" + trigger + "').keypress(function(event) {");
            jsCode.Append("if (event.keyCode === 10 || event.keyCode === 13) {");
            jsCode.Append(" event.preventDefault();");
            jsCode.Append("" + target + "();");
            jsCode.Append("  }\r\n});");

            string result = jsCode.ToString();
            return result;
        }
    }
}
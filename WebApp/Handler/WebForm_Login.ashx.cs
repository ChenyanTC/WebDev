using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace WebApp.Handler
{
    /// <summary>
    /// Summary description for WebForm_Login
    /// </summary>
    public class WebForm_Login : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string data = context.Request["data"];
            LoginInfo loginInfo = new LoginInfo();
            LoginInfo DeserializeLoginInfo = JsonConvert.DeserializeObject<LoginInfo>(data);//反序列化
            string name = DeserializeLoginInfo.name_form1;
            string email = DeserializeLoginInfo.email_form1;
            string info = "服务区返回数据...\nname:" + name + "\nemail:" + email;
            context.Response.ContentType = "text/plain";
            context.Response.Write(info);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }

    public class LoginInfo
    {
        public string email_form1 { get; set; }
        public string name_form1 { get; set; }
    }

}
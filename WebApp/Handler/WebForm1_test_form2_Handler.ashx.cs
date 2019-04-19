using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace WebApp.Handler
{
    /// <summary>
    /// Summary description for WebForm1_test_form2_Handler
    /// </summary>
    public class WebForm1_test_form2_Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //string checkbox1 = context.Request["checkbox1"];
            //string checkbox2 = context.Request["checkbox2"];
            string content = context.Request["form2"];


            context.Response.ContentType = "text/plain";
            context.Response.Write(content);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
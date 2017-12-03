using System.Web;
using System;

namespace HTTPModules.App_Code
{

    public class HelloModule : IHttpModule
    {
        public void Init(HttpApplication context)
        {
            context.BeginRequest += (new EventHandler(this.Application_BeginRequest));
            context.EndRequest += (new EventHandler(this.Application_EndRequest));
        }

        private void Application_EndRequest(object sender, EventArgs e)
        {
            HttpApplication application = (HttpApplication)sender;
            HttpContext context = application.Context;
            string filePath = context.Request.FilePath;
            string fileExtension = VirtualPathUtility.GetExtension(filePath);
            if (fileExtension.Equals(".aspx"))
            {
                context.Response.Write("<hr><h1><font color=red>HelloModule: End of Request</font></h1>");
            }
        }

        private void Application_BeginRequest(object sender, EventArgs e)
        {
            // Create HttpApplication and HttpContext objects to access
            //request and response properties.
            HttpApplication application = (HttpApplication)sender;
            HttpContext context = application.Context;
            string filePath = context.Request.FilePath;
            string fileExtension = VirtualPathUtility.GetExtension(filePath);
            if (fileExtension.Equals(".aspx"))
            {
                context.Response.Write("<h1><font color=red>HelloModule: Beginning of Request</font></h1><hr>");
            }
        }

        public void Dispose()
        {
        }
    }
}
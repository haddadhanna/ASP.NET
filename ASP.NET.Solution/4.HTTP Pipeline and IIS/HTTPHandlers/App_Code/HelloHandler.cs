using System;
using System.Web;

namespace HTTPHandlers.App_Code
{
    public class HelloHandler : IHttpHandler
    {
        public bool IsReusable
        {
            // To enable pooling, return true here.
            // This keeps the handler in memory.
            get { return false; }
        }

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest Request = context.Request;
            HttpResponse Response = context.Response;
            // This handler is called whenever a file ending 
            // in .sample is requested. A file with that extension
            // does not need to exist.
            Response.Write("<html><body><h1>Hello from a synchronous custom HTTP handler.</h1></body></html>");
        }
    }
}
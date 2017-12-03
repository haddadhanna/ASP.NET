<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HTTPHandlers.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>HTTP Handlers</h1>
        <p>An ASP.NET HTTP handler is the process that runs in response to a request that is made to an ASP.NET Web application. The most common handler is an ASP.NET page handler that processes .aspx files. When users request an .aspx file, the request is processed by the page handler.</p>
        <p>The ASP.NET page handler is only one type of handler. ASP.NET includes several other built-in handlers such as the Web service handler for .asmx files, Generic Web handler  for .ashx files, Trace handler (trace.axd).</p>
        <h2>Creating custom HTTP Handler</h2>
        <p>To create a custom HTTP handler, you create a class that implements the <b>IHttpHandler</b> interface to create a synchronous handler. Alternatively, you can implement <b>IHttpAsyncHandler</b> to create an asynchronous handler. Both handler interfaces require that you implement the <b>IsReusable</b> property and the <b>ProcessRequest</b> method. The <b>IsReusable</b> property specifies whether the IHttpHandlerFactory object (the object that actually calls the appropriate handler) can put the handler in a pool and reuse it to increase performance. If the handler cannot be pooled, the factory must create a new instance of the handler every time that the handler is needed.</p>
        <p>The <b>ProcessRequest</b> method is responsible for processing individual HTTP requests. In this method, you write the code that produces the output for the handler.</p>
        <h2>Register HTTP Handlers</h2>
        <p>IIS 7.0 running in Classic mode</p>
        <pre>
&lt;configuration>
  &lt;system.web>
    &lt;httpHandlers>
      &lt;add verb="*" path="*.hello" type="HTTPHandlers.App_Code.HelloHandler"/>
    &lt;/httpHandlers>
  &lt;/system.web>
  &lt;system.webServer>
    &lt;handlers>
      &lt;add  verb="*" path="*.hello" name="HelloHandler" type="HTTPHandlers.App_Code.HelloHandler" modules="IsapiModule" scriptProcessor="C:\Windows\Microsoft.NET\Framework\v4.0.30319\aspnet_isapi.dll"/>
    &lt;/handlers>
  &lt;/system.webServer>
&lt;/&lt;configuration>
        </pre>
        <p>IIS 7.0 running in Integrated mode</p>
        <pre>
&lt;configuration>
  &lt;system.webServer>
    &lt;handlers>
      &lt;add verb="*" path="*.hello" name="HelloHandler" type="HTTPHandlers.App_Code.HelloHandler"/>
    &lt;/handlers>
  &lt;/system.webServer>
&lt;/&lt;configuration>
        </pre>
        <p><a href="hello.hello">Request .hello resource</a></p>
        <p>Reference: <a href="https://msdn.microsoft.com/en-us/library/bb398986.aspx">https://msdn.microsoft.com/en-us/library/bb398986.aspx</a></p>
    </form>
</body>
</html>

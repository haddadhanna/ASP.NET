<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HTTPModules.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>HTTP Modules</h1>
        <p>An HTTP module is an assembly that is called on every request that is made to your application. HTTP modules are called as part of the request pipeline and have access to life-cycle events throughout the request. HTTP modules therefore let you examine incoming requests and take action based on the request. They also let you examine the outgoing response and modify it.</p>
        <p>ASP.NET HTTP modules are like ISAPI filters because they are invoked for all requests. However, they are written in managed code and are fully integrated with the life cycle of an ASP.NET application. You can put custom module source code in the App_Code folder of your application, or you can put compiled custom modules as assemblies in the Bin folder of an application.</p>
        <p>ASP.NET uses modules to implement various application features, which includes forms authentication, caching, session state, and client script services. In each case, when those services are enabled, the module is called as part of a request and performs tasks that are outside the scope of any single page request. Modules can consume application events and can raise events that can be handled in the Global.asax file.</p>
        <p>HTTP modules differ from HTTP handlers. An HTTP handler returns a response to a request that is identified by a file name extension or family of file name extensions. In contrast, an HTTP module is invoked for all requests and responses. It subscribes to event notifications in the request pipeline and lets you run code in registered event handlers. The tasks that a module is used for are general to an application and to all requests for resources in the application.</p>
        <h2>Register HTTP Modules</h2>
        <p>IIS 7.0 running in Classic mode</p>
        <pre>
&lt;configuration>
  &lt;system.web>
    &lt;httpModules>
      &lt;add name="HelloModule" type="HTTPModules.App_Code.HelloModule"/>
    &lt;/httpModules>
  &lt;/system.web>
&lt;/configuration>
        </pre>
        <p>IIS 7.0 running in Integrated mode</p>
        <pre>
&lt;configuration>
   &lt;system.webServer>
    &lt;modules>
      &lt;add name="HelloModule" type="HTTPModules.App_Code.HelloModule"/>
    &lt;/modules>
  &lt;/system.webServer>
&lt;/configuration>
        </pre>
        <p><a href="Demo.aspx">Go to Demo</a></p>
        <p>Reference: <a href="https://msdn.microsoft.com/en-us/library/ms227673.aspx">https://msdn.microsoft.com/en-us/library/ms227673.aspx</a></p>
    </form>
</body>
</html>

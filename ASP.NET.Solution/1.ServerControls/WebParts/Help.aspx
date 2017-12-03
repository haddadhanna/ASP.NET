<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="WebParts.Help" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Parts - Help</title>
</head>
<body>
    <form id="form1" runat="server">
  <div>
     <a href="Index.aspx"><h4>Go Home</h4></a>
        <p>To build and webparts some configuration is necessary:</p>
        <ol>
            <li>
                <p>Webpart use database to save the user changes, in this demo we use the local db. Create a mdf file and add the following connection string to web.config</p>
                <pre>
 &lt;connectionStrings&gt;
     &lt;remove name="LocalSqlServer"/&gt;
     &lt;add name="LocalSqlServer" connectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=fullpath\App_Data\webparts.mdf;Integrated Security=True"/&gt;
 &lt;/connectionStrings&gt;
                </pre>
            </li>
            <li>If the webpart throw the following exception: <tt>Could not find stored procedure 'dbo.aspnet_CheckSchemaVersion'</tt>
                then follow these steps:
                <ul>
                    <li>Open cmd in the location: 'C:\Windows\Microsoft.NET\Framework64\v.xy'</li>
                    <li>run aspnet_regsql.exe</li>
                    <li>A wizard appears, follow the wizard with the necessary inputs</li>
                </ul>
                <br />
            </li>
            <li>
                Webparts need to identify user, in this projects we use windows authentication:
                <ul>
                    <li>Add  <tt>&lt;authentication mode="Windows" /&gt;</tt> in web.config</li>
                    <li>Integrated Windows Authentication is enabled </li>
                </ul>
            </li>
        </ol>
    </div>
    </form>
</body>
</html>

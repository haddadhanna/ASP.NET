using System;

namespace ServerControls
{
    public partial class HtmlControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.inputControl.Value = "Hello from sever!!";
        }
    }
}
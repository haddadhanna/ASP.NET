using System;

namespace CrossPagePosting
{
    public partial class MyForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyForm2.aspx");
        }

        protected void button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("MyForm2.aspx");
        }
    }
}
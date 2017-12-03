using System;
using System.Web.UI.WebControls;

namespace CrossPagePosting
{
    public partial class MyForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.PreviousPage != null)
            {
                TextBox txt1 = (TextBox)this.PreviousPage.FindControl("TextBox1");
                TextBox txt2 = (TextBox)this.PreviousPage.FindControl("TextBox2");
                TextBox txt3 = (TextBox)this.PreviousPage.FindControl("TextBox3");
                if (txt1 != null)
                {
                    Label1.Text = string.Format("Textbox1: {0}, Textbox2: {1}, Textbox3: {2}", txt1.Text, txt2.Text, txt3.Text);
                }
                this.Label2.Text = this.PreviousPage.IsCrossPagePostBack ? "CrossPagePostBack/ " : "Not a crossPagePostBack/ ";
                this.Label2.Text += this.IsPostBack ? "PostBack" : "Not a Postback";
            }
            else
            {
                this.Label2.Text = this.IsPostBack ? "PreviousPage is null/PostBack" : "PreviousPage is null/Not a Postback";
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {

        }
    }
}
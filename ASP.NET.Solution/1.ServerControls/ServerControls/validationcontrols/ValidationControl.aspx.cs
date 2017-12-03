using System;
using System.Web.UI.WebControls;

namespace ServerControls
{
    public partial class ValidationControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void customValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value == "Hello world!!";
        }
    }
}
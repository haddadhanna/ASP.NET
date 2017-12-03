using System;
using System.Web;

namespace Profiles
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                object obj = HttpContext.Current.Profile.GetPropertyValue("FullName");
                if (string.IsNullOrEmpty(obj.ToString()))
                {
                    HttpContext.Current.Profile.SetPropertyValue("FullName", User.Identity.Name);
                    HttpContext.Current.Profile.Save();
                    this.lblInformation.Text = string.Format("Obj is null. User is: {0}", User.Identity.Name);
                }
                else
                {
                    this.lblInformation.Text = string.Format("User FullName is: {0}", obj.ToString());
                }
            }
        }
    }
}
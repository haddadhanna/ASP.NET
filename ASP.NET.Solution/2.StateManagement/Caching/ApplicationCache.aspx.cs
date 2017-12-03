using System;

namespace Caching
{
    public partial class ApplicationCache : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Cache["DateFirstRun"] == null)
                {
                    Cache["DateFirstRun"] = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
                }
                this.lblCache.Text = Cache["DateFirstRun"].ToString();
                this.lblCurrent.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
            }
            else
            {
                this.lblCache.Text = Cache["DateFirstRun"] == null ? "Cache is Empty" : Cache["DateFirstRun"].ToString();
                this.lblCurrent.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Cache.Remove("DateFirstRun");
            this.lblCache.Text = Cache["DateFirstRun"] == null ? "Cache is Empty" : Cache["DateFirstRun"].ToString();
            this.lblCurrent.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
        }
    }
}
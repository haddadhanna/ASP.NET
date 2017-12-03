using System;
using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ServerControls
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:LabledTextBox runat=server></{0}:LabledTextBox>")]
    public class LabledTextBox : TextBox
    {
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string LabelText
        {
            get
            {
                string s = (string)ViewState["LabelText"];
                return (s == null) ? String.Empty : s;
            }
            set
            {
                ViewState["LabelText"] = value;
            }
        }

        public int LabelWidth
        {
            get
            {
                return ViewState["LabelWidth"] != null ? Int32.Parse(ViewState["LabelWidth"].ToString()) : -1;
            }
            set
            {
                ViewState["LabelWidth"] = value;
            }
        }

        
        public override void RenderControl(HtmlTextWriter writer)
        {
            this.Style.Add("margin", "5px 0px 5px 0px");
            string labelText = LabelText;
            if (!String.IsNullOrEmpty(LabelText))
            {
                string style = "padding-left:5px;padding-right:5px;font-weight:bold;";
                if (this.LabelWidth != -1)
                {
                    style += "display: inline-block;width:" + this.LabelWidth + "px;";
                }
                writer.Write("<span style='" + style + "'>");

                writer.WriteEncodedText(LabelText);
                writer.Write("</span>");
            }
            base.RenderControl(writer);
        }
    }
}
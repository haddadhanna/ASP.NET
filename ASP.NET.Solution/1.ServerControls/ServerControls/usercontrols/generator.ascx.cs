using System;

namespace ServerControls
{
    public partial class generator : System.Web.UI.UserControl
    {
        #region Private Fields

        private int minValue;
        private int maxValue;
        private int generatedVal;

        #endregion

        #region Properties

        public int MinValue
        {
            get
            {
                return this.minValue;
            }
            set
            {
                this.minValue = value;
            }
        }

        public int MaxValue { get
            {
                return this.maxValue;
            }
            set
            {
                this.maxValue = value;
            }
        }

        #endregion

        #region Events

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerate_ServerClick(object sender, EventArgs e)
        {
            this.generatedVal = new Random().Next(this.MinValue, this.maxValue);
            this.currNumber.Text = string.Format("The generated number between {0} and {1} is {2}", this.MinValue, this.MaxValue, this.generatedVal);
        }

        #endregion
    }
}
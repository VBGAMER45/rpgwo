using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.ComponentModel.Design;

namespace UpgradeHelpers.Gui
{
    [Designer("System.Windows.Forms.Design.ParentControlDesigner, System.Design", typeof(IDesigner))]
    public partial class SSPanelHelper : UserControl
    {
        public SSPanelHelper()
        {
            InitializeComponent();
            this.label1.SendToBack();
        }


        [Browsable(true), DefaultValue(System.Drawing.ContentAlignment.MiddleCenter), DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public System.Drawing.ContentAlignment Alignment
        {
            get
            {
                return label1.TextAlign;
            }
            set
            {
                label1.TextAlign = value;
            }
        }


        [Browsable(true),DefaultValue("Text"), DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public string Text
        {
            get
            {
                return label1.Text;
            }
            set
            {
                label1.Text = value;
            }
        }

        private void PanelHelper_ControlAdded(object sender, ControlEventArgs e)
        {
                label1.SendToBack();
        }
    }
}

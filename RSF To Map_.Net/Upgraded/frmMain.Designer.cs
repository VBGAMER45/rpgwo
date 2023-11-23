
namespace RsfToMap
{
	partial class frmMain
	{

		#region "Upgrade Support "
		private static frmMain m_vb6FormDefInstance;
		private static bool m_InitializingDefInstance;
		public static frmMain DefInstance
		{
			get
			{
				if (m_vb6FormDefInstance == null || m_vb6FormDefInstance.IsDisposed)
				{
					m_InitializingDefInstance = true;
					m_vb6FormDefInstance = CreateInstance();
					m_InitializingDefInstance = false;
				}
				return m_vb6FormDefInstance;
			}
			set
			{
				m_vb6FormDefInstance = value;
			}
		}

		#endregion
		#region "Windows Form Designer generated code "
		public static frmMain CreateInstance()
		{
			frmMain theInstance = new frmMain();
			theInstance.Form_Load();
			return theInstance;
		}
		private string[] visualControls = new string[]{"components", "ToolTipMain", "cboVersion", "CommonDialog1Open", "CommonDialog1", "cmdExit", "cmdSelect", "Label2", "Label1", "listBoxComboBoxHelper1"};
		//Required by the Windows Form Designer
		private System.ComponentModel.IContainer components;
		public System.Windows.Forms.ToolTip ToolTipMain;
		public System.Windows.Forms.ComboBox cboVersion;
		public System.Windows.Forms.OpenFileDialog CommonDialog1Open;
		public UpgradeStubs.AxMSComDlg_AxCommonDialog CommonDialog1;
		public System.Windows.Forms.Button cmdExit;
		public System.Windows.Forms.Button cmdSelect;
		public System.Windows.Forms.Label Label2;
		public System.Windows.Forms.Label Label1;
		public UpgradeHelpers.Gui.ListControlHelper listBoxComboBoxHelper1;
		//NOTE: The following procedure is required by the Windows Form Designer
		//It can be modified using the Windows Form Designer.
		//Do not modify it using the code editor.
		[System.Diagnostics.DebuggerStepThrough()]
		private void InitializeComponent()
		{
            this.components = new System.ComponentModel.Container();
            this.ToolTipMain = new System.Windows.Forms.ToolTip(this.components);
            this.cboVersion = new System.Windows.Forms.ComboBox();
            this.CommonDialog1Open = new System.Windows.Forms.OpenFileDialog();
            this.CommonDialog1 = new UpgradeStubs.AxMSComDlg_AxCommonDialog();
            this.cmdExit = new System.Windows.Forms.Button();
            this.cmdSelect = new System.Windows.Forms.Button();
            this.Label2 = new System.Windows.Forms.Label();
            this.Label1 = new System.Windows.Forms.Label();
            this.listBoxComboBoxHelper1 = new UpgradeHelpers.Gui.ListControlHelper(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.listBoxComboBoxHelper1)).BeginInit();
            this.SuspendLayout();
            // 
            // cboVersion
            // 
            this.cboVersion.AllowDrop = true;
            this.cboVersion.BackColor = System.Drawing.SystemColors.Window;
            this.cboVersion.ForeColor = System.Drawing.SystemColors.WindowText;
            this.listBoxComboBoxHelper1.SetItemData(this.cboVersion, new int[] {
            0,
            0});
            this.cboVersion.Items.AddRange(new object[] {
            "V1",
            "V2/V3"});
            this.cboVersion.Location = new System.Drawing.Point(152, 104);
            this.cboVersion.Name = "cboVersion";
            this.cboVersion.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.cboVersion.Size = new System.Drawing.Size(129, 21);
            this.cboVersion.TabIndex = 4;
            this.cboVersion.Text = "V1";
            // 
            // CommonDialog1
            // 
            this.CommonDialog1.Location = new System.Drawing.Point(0, 0);
            this.CommonDialog1.Name = "CommonDialog1";
            this.CommonDialog1.Size = new System.Drawing.Size(0, 0);
            this.CommonDialog1.TabIndex = 0;
            // 
            // cmdExit
            // 
            this.cmdExit.AllowDrop = true;
            this.cmdExit.BackColor = System.Drawing.SystemColors.Control;
            this.cmdExit.ForeColor = System.Drawing.SystemColors.ControlText;
            this.cmdExit.Location = new System.Drawing.Point(96, 144);
            this.cmdExit.Name = "cmdExit";
            this.cmdExit.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.cmdExit.Size = new System.Drawing.Size(145, 33);
            this.cmdExit.TabIndex = 2;
            this.cmdExit.Text = "E&xit";
            this.cmdExit.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.cmdExit.UseVisualStyleBackColor = false;
            this.cmdExit.Click += new System.EventHandler(this.cmdExit_Click);
            // 
            // cmdSelect
            // 
            this.cmdSelect.AllowDrop = true;
            this.cmdSelect.BackColor = System.Drawing.SystemColors.Control;
            this.cmdSelect.ForeColor = System.Drawing.SystemColors.ControlText;
            this.cmdSelect.Location = new System.Drawing.Point(96, 65);
            this.cmdSelect.Name = "cmdSelect";
            this.cmdSelect.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.cmdSelect.Size = new System.Drawing.Size(145, 33);
            this.cmdSelect.TabIndex = 1;
            this.cmdSelect.Text = "&Select .rsf file";
            this.cmdSelect.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.cmdSelect.UseVisualStyleBackColor = false;
            this.cmdSelect.Click += new System.EventHandler(this.cmdSelect_Click);
            // 
            // Label2
            // 
            this.Label2.AllowDrop = true;
            this.Label2.BackColor = System.Drawing.SystemColors.Control;
            this.Label2.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Label2.Location = new System.Drawing.Point(40, 104);
            this.Label2.Name = "Label2";
            this.Label2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.Label2.Size = new System.Drawing.Size(105, 33);
            this.Label2.TabIndex = 3;
            this.Label2.Text = "RPGWO Edit Version: ";
            // 
            // Label1
            // 
            this.Label1.AllowDrop = true;
            this.Label1.BackColor = System.Drawing.SystemColors.Control;
            this.Label1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Label1.Location = new System.Drawing.Point(0, 0);
            this.Label1.Name = "Label1";
            this.Label1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.Label1.Size = new System.Drawing.Size(361, 49);
            this.Label1.TabIndex = 0;
            this.Label1.Text = "Purpose if you loose your map file but still have the .rsf this will attempt to r" +
    "ecrate the map fie";
            // 
            // frmMain
            // 
            this.AllowDrop = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(351, 206);
            this.Controls.Add(this.cboVersion);
            this.Controls.Add(this.cmdExit);
            this.Controls.Add(this.cmdSelect);
            this.Controls.Add(this.Label2);
            this.Controls.Add(this.Label1);
            this.Location = new System.Drawing.Point(4, 23);
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Rsf To Map converter by Jon";
            this.Activated += new System.EventHandler(this.frmMain_Activated);
            ((System.ComponentModel.ISupportInitialize)(this.listBoxComboBoxHelper1)).EndInit();
            this.ResumeLayout(false);

		}
		#endregion
	}
}
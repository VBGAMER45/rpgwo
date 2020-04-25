namespace Autoupdater
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
        	this.button1 = new System.Windows.Forms.Button();
        	this.lstServerSelect = new System.Windows.Forms.ListBox();
        	this.button2 = new System.Windows.Forms.Button();
        	this.progressBar1 = new System.Windows.Forms.ProgressBar();
        	this.progressBar2 = new System.Windows.Forms.ProgressBar();
        	this.SuspendLayout();
        	// 
        	// button1
        	// 
        	this.button1.Location = new System.Drawing.Point(12, 139);
        	this.button1.Name = "button1";
        	this.button1.Size = new System.Drawing.Size(70, 23);
        	this.button1.TabIndex = 0;
        	this.button1.Text = "Launch";
        	this.button1.UseVisualStyleBackColor = true;
        	this.button1.Click += new System.EventHandler(this.button1_Click);
        	// 
        	// lstServerSelect
        	// 
        	this.lstServerSelect.FormattingEnabled = true;
        	this.lstServerSelect.Location = new System.Drawing.Point(12, 12);
        	this.lstServerSelect.Name = "lstServerSelect";
        	this.lstServerSelect.Size = new System.Drawing.Size(157, 121);
        	this.lstServerSelect.TabIndex = 1;
        	// 
        	// button2
        	// 
        	this.button2.Location = new System.Drawing.Point(99, 139);
        	this.button2.Name = "button2";
        	this.button2.Size = new System.Drawing.Size(70, 23);
        	this.button2.TabIndex = 2;
        	this.button2.Text = "Exit";
        	this.button2.UseVisualStyleBackColor = true;
        	this.button2.Click += new System.EventHandler(this.button2_Click);
        	// 
        	// progressBar1
        	// 
        	this.progressBar1.Location = new System.Drawing.Point(12, 168);
        	this.progressBar1.Name = "progressBar1";
        	this.progressBar1.Size = new System.Drawing.Size(157, 10);
        	this.progressBar1.TabIndex = 3;
        	// 
        	// progressBar2
        	// 
        	this.progressBar2.Location = new System.Drawing.Point(12, 184);
        	this.progressBar2.Name = "progressBar2";
        	this.progressBar2.Size = new System.Drawing.Size(157, 10);
        	this.progressBar2.TabIndex = 4;
        	// 
        	// Form1
        	// 
        	this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
        	this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
        	this.ClientSize = new System.Drawing.Size(181, 198);
        	this.ControlBox = false;
        	this.Controls.Add(this.progressBar2);
        	this.Controls.Add(this.progressBar1);
        	this.Controls.Add(this.button2);
        	this.Controls.Add(this.lstServerSelect);
        	this.Controls.Add(this.button1);
        	this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
        	this.MaximizeBox = false;
        	this.Name = "Form1";
        	this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
        	this.Text = "Updater";
        	this.ResumeLayout(false);
        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.ListBox lstServerSelect;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.ProgressBar progressBar2;
    }
}


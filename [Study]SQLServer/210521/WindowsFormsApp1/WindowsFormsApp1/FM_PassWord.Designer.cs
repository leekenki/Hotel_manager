
namespace WindowsFormsApp1
{
    partial class FM_PassWord
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.USERID = new System.Windows.Forms.TextBox();
            this.PW = new System.Windows.Forms.TextBox();
            this.NEWPW = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(118, 73);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "사용자ID";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(118, 136);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 15);
            this.label2.TabIndex = 1;
            this.label2.Text = "이전 PW";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(118, 209);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 15);
            this.label3.TabIndex = 2;
            this.label3.Text = "변경 PW";
            // 
            // USERID
            // 
            this.USERID.Location = new System.Drawing.Point(223, 70);
            this.USERID.Name = "USERID";
            this.USERID.Size = new System.Drawing.Size(225, 25);
            this.USERID.TabIndex = 3;
            // 
            // PW
            // 
            this.PW.Location = new System.Drawing.Point(223, 133);
            this.PW.Name = "PW";
            this.PW.Size = new System.Drawing.Size(225, 25);
            this.PW.TabIndex = 4;
            // 
            // NEWPW
            // 
            this.NEWPW.Location = new System.Drawing.Point(223, 206);
            this.NEWPW.Name = "NEWPW";
            this.NEWPW.Size = new System.Drawing.Size(225, 25);
            this.NEWPW.TabIndex = 5;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(223, 313);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(157, 44);
            this.button1.TabIndex = 6;
            this.button1.Text = "변경등록";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(418, 312);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(157, 45);
            this.button2.TabIndex = 7;
            this.button2.Text = "닫기";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // FM_PassWord
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(623, 394);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.NEWPW);
            this.Controls.Add(this.PW);
            this.Controls.Add(this.USERID);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FM_PassWord";
            this.Text = "비밀번호의변경";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox USERID;
        private System.Windows.Forms.TextBox PW;
        private System.Windows.Forms.TextBox NEWPW;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
    }
}
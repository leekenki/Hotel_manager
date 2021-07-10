
namespace DEV_Form
{
    partial class FM_ITEM
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
            this.txtItemCode = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtItemName = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.dtpStart = new System.Windows.Forms.DateTimePicker();
            this.dtpEnd = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.chkNameOnly = new System.Windows.Forms.CheckBox();
            this.label5 = new System.Windows.Forms.Label();
            this.rdoProduct = new System.Windows.Forms.RadioButton();
            this.rdoEnd = new System.Windows.Forms.RadioButton();
            this.btnSearch = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cboItemDesc = new System.Windows.Forms.ComboBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.dgvGrid = new System.Windows.Forms.DataGridView();
            this.btnDelete = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnAdd = new System.Windows.Forms.Button();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.btnDeleteIMG = new System.Windows.Forms.Button();
            this.btnSaaveIMG = new System.Windows.Forms.Button();
            this.btnLoadIMG = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvGrid)).BeginInit();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(5, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(67, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "품목코드";
            // 
            // txtItemCode
            // 
            this.txtItemCode.Location = new System.Drawing.Point(76, 27);
            this.txtItemCode.Name = "txtItemCode";
            this.txtItemCode.Size = new System.Drawing.Size(173, 25);
            this.txtItemCode.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(266, 30);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 15);
            this.label2.TabIndex = 0;
            this.label2.Text = "품목명";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // txtItemName
            // 
            this.txtItemName.Location = new System.Drawing.Point(323, 27);
            this.txtItemName.Name = "txtItemName";
            this.txtItemName.Size = new System.Drawing.Size(188, 25);
            this.txtItemName.TabIndex = 1;
            this.txtItemName.TextChanged += new System.EventHandler(this.textBox2_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(523, 35);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 15);
            this.label3.TabIndex = 2;
            this.label3.Text = "출시일자";
            // 
            // dtpStart
            // 
            this.dtpStart.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpStart.Location = new System.Drawing.Point(596, 30);
            this.dtpStart.Name = "dtpStart";
            this.dtpStart.Size = new System.Drawing.Size(144, 25);
            this.dtpStart.TabIndex = 3;
            this.dtpStart.Value = new System.DateTime(2021, 5, 24, 0, 0, 0, 0);
            // 
            // dtpEnd
            // 
            this.dtpEnd.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpEnd.Location = new System.Drawing.Point(801, 30);
            this.dtpEnd.Name = "dtpEnd";
            this.dtpEnd.Size = new System.Drawing.Size(148, 25);
            this.dtpEnd.TabIndex = 4;
            this.dtpEnd.Value = new System.DateTime(2021, 5, 24, 0, 0, 0, 0);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(763, 35);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(18, 15);
            this.label4.TabIndex = 5;
            this.label4.Text = "~";
            // 
            // chkNameOnly
            // 
            this.chkNameOnly.AutoSize = true;
            this.chkNameOnly.Location = new System.Drawing.Point(275, 96);
            this.chkNameOnly.Name = "chkNameOnly";
            this.chkNameOnly.Size = new System.Drawing.Size(139, 19);
            this.chkNameOnly.TabIndex = 6;
            this.chkNameOnly.Text = "이름으로만 검색";
            this.chkNameOnly.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(5, 97);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(67, 15);
            this.label5.TabIndex = 0;
            this.label5.Text = "품목상세";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // rdoProduct
            // 
            this.rdoProduct.AutoSize = true;
            this.rdoProduct.Checked = true;
            this.rdoProduct.Location = new System.Drawing.Point(17, 40);
            this.rdoProduct.Name = "rdoProduct";
            this.rdoProduct.Size = new System.Drawing.Size(58, 19);
            this.rdoProduct.TabIndex = 7;
            this.rdoProduct.TabStop = true;
            this.rdoProduct.Text = "생산";
            this.rdoProduct.UseVisualStyleBackColor = true;
            // 
            // rdoEnd
            // 
            this.rdoEnd.AutoSize = true;
            this.rdoEnd.Location = new System.Drawing.Point(90, 40);
            this.rdoEnd.Name = "rdoEnd";
            this.rdoEnd.Size = new System.Drawing.Size(58, 19);
            this.rdoEnd.TabIndex = 8;
            this.rdoEnd.Text = "단품";
            this.rdoEnd.UseVisualStyleBackColor = true;
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(622, 96);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(75, 23);
            this.btnSearch.TabIndex = 9;
            this.btnSearch.Text = "조회";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cboItemDesc);
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txtItemCode);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.chkNameOnly);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtItemName);
            this.groupBox1.Controls.Add(this.dtpEnd);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.dtpStart);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(967, 162);
            this.groupBox1.TabIndex = 10;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "조회";
            // 
            // cboItemDesc
            // 
            this.cboItemDesc.FormattingEnabled = true;
            this.cboItemDesc.Location = new System.Drawing.Point(76, 94);
            this.cboItemDesc.Name = "cboItemDesc";
            this.cboItemDesc.Size = new System.Drawing.Size(173, 23);
            this.cboItemDesc.TabIndex = 12;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.rdoProduct);
            this.groupBox2.Controls.Add(this.rdoEnd);
            this.groupBox2.Location = new System.Drawing.Point(420, 74);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(178, 70);
            this.groupBox2.TabIndex = 11;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "단종여부";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.dgvGrid);
            this.groupBox3.Controls.Add(this.btnDelete);
            this.groupBox3.Controls.Add(this.btnSave);
            this.groupBox3.Controls.Add(this.btnAdd);
            this.groupBox3.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox3.Location = new System.Drawing.Point(0, 162);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(967, 196);
            this.groupBox3.TabIndex = 11;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "품목정보";
            // 
            // dgvGrid
            // 
            this.dgvGrid.AllowUserToAddRows = false;
            this.dgvGrid.AllowUserToDeleteRows = false;
            this.dgvGrid.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvGrid.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgvGrid.Location = new System.Drawing.Point(3, 63);
            this.dgvGrid.Name = "dgvGrid";
            this.dgvGrid.RowHeadersWidth = 51;
            this.dgvGrid.RowTemplate.Height = 27;
            this.dgvGrid.Size = new System.Drawing.Size(961, 130);
            this.dgvGrid.TabIndex = 3;
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(229, 26);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(89, 31);
            this.btnDelete.TabIndex = 2;
            this.btnDelete.Text = "삭제";
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(114, 25);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(85, 32);
            this.btnSave.TabIndex = 1;
            this.btnSave.Text = "저장";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(12, 24);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(77, 33);
            this.btnAdd.TabIndex = 0;
            this.btnAdd.Text = "추가";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.btnDeleteIMG);
            this.groupBox4.Controls.Add(this.btnSaaveIMG);
            this.groupBox4.Controls.Add(this.btnLoadIMG);
            this.groupBox4.Controls.Add(this.pictureBox1);
            this.groupBox4.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox4.Location = new System.Drawing.Point(0, 358);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(967, 165);
            this.groupBox4.TabIndex = 12;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "품목 이미지 관리";
            // 
            // btnDeleteIMG
            // 
            this.btnDeleteIMG.Location = new System.Drawing.Point(223, 63);
            this.btnDeleteIMG.Name = "btnDeleteIMG";
            this.btnDeleteIMG.Size = new System.Drawing.Size(76, 28);
            this.btnDeleteIMG.TabIndex = 3;
            this.btnDeleteIMG.Text = "삭제";
            this.btnDeleteIMG.UseVisualStyleBackColor = true;
            // 
            // btnSaaveIMG
            // 
            this.btnSaaveIMG.Location = new System.Drawing.Point(115, 64);
            this.btnSaaveIMG.Name = "btnSaaveIMG";
            this.btnSaaveIMG.Size = new System.Drawing.Size(83, 28);
            this.btnSaaveIMG.TabIndex = 2;
            this.btnSaaveIMG.Text = "저장";
            this.btnSaaveIMG.UseVisualStyleBackColor = true;
            // 
            // btnLoadIMG
            // 
            this.btnLoadIMG.Location = new System.Drawing.Point(13, 63);
            this.btnLoadIMG.Name = "btnLoadIMG";
            this.btnLoadIMG.Size = new System.Drawing.Size(75, 30);
            this.btnLoadIMG.TabIndex = 1;
            this.btnLoadIMG.Text = "이미지 불러오기";
            this.btnLoadIMG.UseVisualStyleBackColor = true;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(3, 21);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(315, 36);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // FM_ITEM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(967, 523);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FM_ITEM";
            this.Text = "품목 관리";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.FM_ITEM_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvGrid)).EndInit();
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtItemCode;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtItemName;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtpStart;
        private System.Windows.Forms.DateTimePicker dtpEnd;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox chkNameOnly;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.RadioButton rdoProduct;
        private System.Windows.Forms.RadioButton rdoEnd;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.DataGridView dgvGrid;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Button btnDeleteIMG;
        private System.Windows.Forms.Button btnSaaveIMG;
        private System.Windows.Forms.Button btnLoadIMG;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.ComboBox cboItemDesc;
    }
}
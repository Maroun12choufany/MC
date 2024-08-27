namespace GymManagementSystem
{
    partial class UCClasses
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblClassID = new System.Windows.Forms.Label();
            this.lblCapacity = new System.Windows.Forms.Label();
            this.lblSchedule = new System.Windows.Forms.Label();
            this.lblInstructor = new System.Windows.Forms.Label();
            this.lblClassName = new System.Windows.Forms.Label();
            this.dataGridViewClasses = new System.Windows.Forms.DataGridView();
            this.lblClasses = new System.Windows.Forms.Label();
            this.txtClassID = new System.Windows.Forms.TextBox();
            this.txtSchedules = new System.Windows.Forms.TextBox();
            this.txtInstructors = new System.Windows.Forms.TextBox();
            this.txtClassName = new System.Windows.Forms.TextBox();
            this.txtCapacities = new System.Windows.Forms.TextBox();
            this.btnAddClasses = new System.Windows.Forms.Button();
            this.btnUpdateClasses = new System.Windows.Forms.Button();
            this.btnDeleteClasses = new System.Windows.Forms.Button();
            this.btnClearClasses = new System.Windows.Forms.Button();
            this.btnPrintClasses = new System.Windows.Forms.Button();
            this.btnExportClasses = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewClasses)).BeginInit();
            this.SuspendLayout();
            // 
            // lblClassID
            // 
            this.lblClassID.AutoSize = true;
            this.lblClassID.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblClassID.ForeColor = System.Drawing.Color.White;
            this.lblClassID.Location = new System.Drawing.Point(17, 15);
            this.lblClassID.Name = "lblClassID";
            this.lblClassID.Size = new System.Drawing.Size(88, 25);
            this.lblClassID.TabIndex = 0;
            this.lblClassID.Text = "ClassID";
            // 
            // lblCapacity
            // 
            this.lblCapacity.AutoSize = true;
            this.lblCapacity.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCapacity.ForeColor = System.Drawing.Color.White;
            this.lblCapacity.Location = new System.Drawing.Point(17, 119);
            this.lblCapacity.Name = "lblCapacity";
            this.lblCapacity.Size = new System.Drawing.Size(97, 25);
            this.lblCapacity.TabIndex = 1;
            this.lblCapacity.Text = "Capacity";
            // 
            // lblSchedule
            // 
            this.lblSchedule.AutoSize = true;
            this.lblSchedule.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSchedule.ForeColor = System.Drawing.Color.White;
            this.lblSchedule.Location = new System.Drawing.Point(322, 68);
            this.lblSchedule.Name = "lblSchedule";
            this.lblSchedule.Size = new System.Drawing.Size(103, 25);
            this.lblSchedule.TabIndex = 2;
            this.lblSchedule.Text = "Schedule";
            // 
            // lblInstructor
            // 
            this.lblInstructor.AutoSize = true;
            this.lblInstructor.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInstructor.ForeColor = System.Drawing.Color.White;
            this.lblInstructor.Location = new System.Drawing.Point(9, 68);
            this.lblInstructor.Name = "lblInstructor";
            this.lblInstructor.Size = new System.Drawing.Size(113, 25);
            this.lblInstructor.TabIndex = 3;
            this.lblInstructor.Text = "Instructors";
            // 
            // lblClassName
            // 
            this.lblClassName.AutoSize = true;
            this.lblClassName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblClassName.ForeColor = System.Drawing.Color.White;
            this.lblClassName.Location = new System.Drawing.Point(290, 12);
            this.lblClassName.Name = "lblClassName";
            this.lblClassName.Size = new System.Drawing.Size(123, 25);
            this.lblClassName.TabIndex = 4;
            this.lblClassName.Text = "ClassName";
            // 
            // dataGridViewClasses
            // 
            this.dataGridViewClasses.AllowUserToAddRows = false;
            this.dataGridViewClasses.AllowUserToDeleteRows = false;
            this.dataGridViewClasses.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewClasses.Location = new System.Drawing.Point(41, 166);
            this.dataGridViewClasses.Name = "dataGridViewClasses";
            this.dataGridViewClasses.ReadOnly = true;
            this.dataGridViewClasses.RowHeadersWidth = 51;
            this.dataGridViewClasses.RowTemplate.Height = 24;
            this.dataGridViewClasses.Size = new System.Drawing.Size(676, 271);
            this.dataGridViewClasses.TabIndex = 5;
            // 
            // lblClasses
            // 
            this.lblClasses.AutoSize = true;
            this.lblClasses.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblClasses.ForeColor = System.Drawing.Color.White;
            this.lblClasses.Location = new System.Drawing.Point(605, 119);
            this.lblClasses.Name = "lblClasses";
            this.lblClasses.Size = new System.Drawing.Size(90, 25);
            this.lblClasses.TabIndex = 6;
            this.lblClasses.Text = "Classes";
            // 
            // txtClassID
            // 
            this.txtClassID.BackColor = System.Drawing.SystemColors.Highlight;
            this.txtClassID.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtClassID.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtClassID.Location = new System.Drawing.Point(117, 15);
            this.txtClassID.Name = "txtClassID";
            this.txtClassID.Size = new System.Drawing.Size(139, 29);
            this.txtClassID.TabIndex = 7;
            this.txtClassID.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtClassID_KeyPress);
            // 
            // txtSchedules
            // 
            this.txtSchedules.BackColor = System.Drawing.SystemColors.Highlight;
            this.txtSchedules.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtSchedules.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSchedules.Location = new System.Drawing.Point(443, 64);
            this.txtSchedules.Name = "txtSchedules";
            this.txtSchedules.Size = new System.Drawing.Size(228, 29);
            this.txtSchedules.TabIndex = 8;
            // 
            // txtInstructors
            // 
            this.txtInstructors.BackColor = System.Drawing.SystemColors.Highlight;
            this.txtInstructors.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtInstructors.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtInstructors.Location = new System.Drawing.Point(145, 68);
            this.txtInstructors.Name = "txtInstructors";
            this.txtInstructors.Size = new System.Drawing.Size(154, 29);
            this.txtInstructors.TabIndex = 9;
            // 
            // txtClassName
            // 
            this.txtClassName.BackColor = System.Drawing.SystemColors.Highlight;
            this.txtClassName.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtClassName.Location = new System.Drawing.Point(431, 12);
            this.txtClassName.Name = "txtClassName";
            this.txtClassName.Size = new System.Drawing.Size(223, 36);
            this.txtClassName.TabIndex = 10;
            // 
            // txtCapacities
            // 
            this.txtCapacities.BackColor = System.Drawing.SystemColors.Highlight;
            this.txtCapacities.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtCapacities.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCapacities.Location = new System.Drawing.Point(145, 121);
            this.txtCapacities.Name = "txtCapacities";
            this.txtCapacities.Size = new System.Drawing.Size(185, 29);
            this.txtCapacities.TabIndex = 11;
            // 
            // btnAddClasses
            // 
            this.btnAddClasses.BackColor = System.Drawing.Color.Lime;
            this.btnAddClasses.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnAddClasses.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddClasses.ForeColor = System.Drawing.Color.White;
            this.btnAddClasses.Location = new System.Drawing.Point(22, 491);
            this.btnAddClasses.Name = "btnAddClasses";
            this.btnAddClasses.Size = new System.Drawing.Size(108, 41);
            this.btnAddClasses.TabIndex = 12;
            this.btnAddClasses.Text = "Add";
            this.btnAddClasses.UseVisualStyleBackColor = false;
            this.btnAddClasses.Click += new System.EventHandler(this.btnAddClasses_Click);
            // 
            // btnUpdateClasses
            // 
            this.btnUpdateClasses.BackColor = System.Drawing.SystemColors.Highlight;
            this.btnUpdateClasses.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnUpdateClasses.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUpdateClasses.ForeColor = System.Drawing.Color.White;
            this.btnUpdateClasses.Location = new System.Drawing.Point(153, 490);
            this.btnUpdateClasses.Name = "btnUpdateClasses";
            this.btnUpdateClasses.Size = new System.Drawing.Size(103, 44);
            this.btnUpdateClasses.TabIndex = 13;
            this.btnUpdateClasses.Text = "Update";
            this.btnUpdateClasses.UseVisualStyleBackColor = false;
            this.btnUpdateClasses.Click += new System.EventHandler(this.btnUpdateClasses_Click);
            // 
            // btnDeleteClasses
            // 
            this.btnDeleteClasses.BackColor = System.Drawing.SystemColors.Desktop;
            this.btnDeleteClasses.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnDeleteClasses.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDeleteClasses.ForeColor = System.Drawing.Color.White;
            this.btnDeleteClasses.Location = new System.Drawing.Point(281, 491);
            this.btnDeleteClasses.Name = "btnDeleteClasses";
            this.btnDeleteClasses.Size = new System.Drawing.Size(110, 43);
            this.btnDeleteClasses.TabIndex = 14;
            this.btnDeleteClasses.Text = "Delete";
            this.btnDeleteClasses.UseVisualStyleBackColor = false;
            this.btnDeleteClasses.Click += new System.EventHandler(this.btnDeleteClasses_Click);
            // 
            // btnClearClasses
            // 
            this.btnClearClasses.BackColor = System.Drawing.Color.Blue;
            this.btnClearClasses.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnClearClasses.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClearClasses.ForeColor = System.Drawing.Color.White;
            this.btnClearClasses.Location = new System.Drawing.Point(414, 491);
            this.btnClearClasses.Name = "btnClearClasses";
            this.btnClearClasses.Size = new System.Drawing.Size(115, 43);
            this.btnClearClasses.TabIndex = 15;
            this.btnClearClasses.Text = "Clear";
            this.btnClearClasses.UseVisualStyleBackColor = false;
            this.btnClearClasses.Click += new System.EventHandler(this.btnClearClasses_Click);
            // 
            // btnPrintClasses
            // 
            this.btnPrintClasses.BackColor = System.Drawing.Color.Red;
            this.btnPrintClasses.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnPrintClasses.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPrintClasses.ForeColor = System.Drawing.Color.White;
            this.btnPrintClasses.Location = new System.Drawing.Point(560, 491);
            this.btnPrintClasses.Name = "btnPrintClasses";
            this.btnPrintClasses.Size = new System.Drawing.Size(113, 41);
            this.btnPrintClasses.TabIndex = 19;
            this.btnPrintClasses.Text = "Print";
            this.btnPrintClasses.UseVisualStyleBackColor = false;
            this.btnPrintClasses.Click += new System.EventHandler(this.btnPrintClasses_Click);
            // 
            // btnExportClasses
            // 
            this.btnExportClasses.BackColor = System.Drawing.Color.OrangeRed;
            this.btnExportClasses.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnExportClasses.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExportClasses.ForeColor = System.Drawing.Color.White;
            this.btnExportClasses.Location = new System.Drawing.Point(703, 491);
            this.btnExportClasses.Name = "btnExportClasses";
            this.btnExportClasses.Size = new System.Drawing.Size(101, 41);
            this.btnExportClasses.TabIndex = 20;
            this.btnExportClasses.Text = "Export";
            this.btnExportClasses.UseVisualStyleBackColor = false;
            this.btnExportClasses.Click += new System.EventHandler(this.btnExportClasses_Click);
            // 
            // UCClasses
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Black;
            this.Controls.Add(this.btnExportClasses);
            this.Controls.Add(this.btnPrintClasses);
            this.Controls.Add(this.btnClearClasses);
            this.Controls.Add(this.btnDeleteClasses);
            this.Controls.Add(this.btnUpdateClasses);
            this.Controls.Add(this.btnAddClasses);
            this.Controls.Add(this.txtCapacities);
            this.Controls.Add(this.txtClassName);
            this.Controls.Add(this.txtInstructors);
            this.Controls.Add(this.txtSchedules);
            this.Controls.Add(this.txtClassID);
            this.Controls.Add(this.lblClasses);
            this.Controls.Add(this.dataGridViewClasses);
            this.Controls.Add(this.lblClassName);
            this.Controls.Add(this.lblInstructor);
            this.Controls.Add(this.lblSchedule);
            this.Controls.Add(this.lblCapacity);
            this.Controls.Add(this.lblClassID);
            this.Name = "UCClasses";
            this.Size = new System.Drawing.Size(885, 568);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewClasses)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblClassID;
        private System.Windows.Forms.Label lblCapacity;
        private System.Windows.Forms.Label lblSchedule;
        private System.Windows.Forms.Label lblInstructor;
        private System.Windows.Forms.Label lblClassName;
        private System.Windows.Forms.DataGridView dataGridViewClasses;
        private System.Windows.Forms.Label lblClasses;
        private System.Windows.Forms.TextBox txtClassID;
        private System.Windows.Forms.TextBox txtSchedules;
        private System.Windows.Forms.TextBox txtInstructors;
        private System.Windows.Forms.TextBox txtClassName;
        private System.Windows.Forms.TextBox txtCapacities;
        private System.Windows.Forms.Button btnAddClasses;
        private System.Windows.Forms.Button btnUpdateClasses;
        private System.Windows.Forms.Button btnDeleteClasses;
        private System.Windows.Forms.Button btnClearClasses;
        private System.Windows.Forms.Button btnPrintClasses;
        private System.Windows.Forms.Button btnExportClasses;
    }
}

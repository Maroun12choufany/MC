namespace GymManagementSystem
{
    partial class HomePage
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.ucBdmi1 = new GymManagementSystem.UCBdmi();
            this.btnCalculator = new System.Windows.Forms.Button();
            this.btnClasses = new System.Windows.Forms.Button();
            this.btnMembers = new System.Windows.Forms.Button();
            this.lblWelcome = new System.Windows.Forms.Label();
            this.btnBmi = new System.Windows.Forms.Button();
            this.ucBdmi2 = new GymManagementSystem.UCBdmi();
            this.ucMembers2 = new GymManagementSystem.UCMembers();
            this.ucClasses2 = new GymManagementSystem.UCClasses();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Red;
            this.panel1.Controls.Add(this.ucBdmi1);
            this.panel1.Controls.Add(this.btnCalculator);
            this.panel1.Controls.Add(this.btnClasses);
            this.panel1.Controls.Add(this.btnMembers);
            this.panel1.Controls.Add(this.lblWelcome);
            this.panel1.Location = new System.Drawing.Point(-2, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(832, 119);
            this.panel1.TabIndex = 0;
            // 
            // ucBdmi1
            // 
            this.ucBdmi1.BackColor = System.Drawing.Color.Black;
            this.ucBdmi1.Location = new System.Drawing.Point(4, 110);
            this.ucBdmi1.Name = "ucBdmi1";
            this.ucBdmi1.Size = new System.Drawing.Size(804, 535);
            this.ucBdmi1.TabIndex = 4;
            // 
            // btnCalculator
            // 
            this.btnCalculator.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnCalculator.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCalculator.Location = new System.Drawing.Point(310, 62);
            this.btnCalculator.Name = "btnCalculator";
            this.btnCalculator.Size = new System.Drawing.Size(174, 42);
            this.btnCalculator.TabIndex = 3;
            this.btnCalculator.Text = "BMICalculator";
            this.btnCalculator.UseVisualStyleBackColor = true;
            this.btnCalculator.Click += new System.EventHandler(this.btnCalculator_Click);
            // 
            // btnClasses
            // 
            this.btnClasses.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnClasses.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClasses.Location = new System.Drawing.Point(563, 62);
            this.btnClasses.Name = "btnClasses";
            this.btnClasses.Size = new System.Drawing.Size(174, 42);
            this.btnClasses.TabIndex = 2;
            this.btnClasses.Text = "Classes";
            this.btnClasses.UseVisualStyleBackColor = true;
            this.btnClasses.Click += new System.EventHandler(this.btnClasses_Click);
            // 
            // btnMembers
            // 
            this.btnMembers.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnMembers.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMembers.Location = new System.Drawing.Point(78, 62);
            this.btnMembers.Name = "btnMembers";
            this.btnMembers.Size = new System.Drawing.Size(174, 42);
            this.btnMembers.TabIndex = 1;
            this.btnMembers.Text = "Members";
            this.btnMembers.UseVisualStyleBackColor = true;
            this.btnMembers.Click += new System.EventHandler(this.btnMembers_Click);
            // 
            // lblWelcome
            // 
            this.lblWelcome.AutoSize = true;
            this.lblWelcome.BackColor = System.Drawing.Color.Red;
            this.lblWelcome.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblWelcome.ForeColor = System.Drawing.Color.White;
            this.lblWelcome.Location = new System.Drawing.Point(164, 21);
            this.lblWelcome.Name = "lblWelcome";
            this.lblWelcome.Size = new System.Drawing.Size(497, 29);
            this.lblWelcome.TabIndex = 0;
            this.lblWelcome.Text = "Welcome To Gym Management System";
            // 
            // btnBmi
            // 
            this.btnBmi.Location = new System.Drawing.Point(0, 0);
            this.btnBmi.Name = "btnBmi";
            this.btnBmi.Size = new System.Drawing.Size(75, 23);
            this.btnBmi.TabIndex = 0;
            // 
            // ucBdmi2
            // 
            this.ucBdmi2.BackColor = System.Drawing.Color.Black;
            this.ucBdmi2.Location = new System.Drawing.Point(2, 112);
            this.ucBdmi2.Name = "ucBdmi2";
            this.ucBdmi2.Size = new System.Drawing.Size(828, 551);
            this.ucBdmi2.TabIndex = 1;
            // 
            // ucMembers2
            // 
            this.ucMembers2.BackColor = System.Drawing.Color.Black;
            this.ucMembers2.Location = new System.Drawing.Point(-2, 112);
            this.ucMembers2.Name = "ucMembers2";
            this.ucMembers2.Size = new System.Drawing.Size(832, 551);
            this.ucMembers2.TabIndex = 2;
            // 
            // ucClasses2
            // 
            this.ucClasses2.BackColor = System.Drawing.Color.Black;
            this.ucClasses2.Location = new System.Drawing.Point(-2, 112);
            this.ucClasses2.Name = "ucClasses2";
            this.ucClasses2.Size = new System.Drawing.Size(832, 561);
            this.ucClasses2.TabIndex = 3;
            // 
            // HomePage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(830, 665);
            this.Controls.Add(this.ucClasses2);
            this.Controls.Add(this.ucMembers2);
            this.Controls.Add(this.ucBdmi2);
            this.Controls.Add(this.panel1);
            this.Name = "HomePage";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "HomePage";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnMembers;
        private System.Windows.Forms.Label lblWelcome;
        private System.Windows.Forms.Button btnClasses;
        private UCMembers ucMembers1;
        private UCClasses ucClasses1;
        private System.Windows.Forms.Button btnBmi;
        private System.Windows.Forms.Button btnCalculator;
        private UCBdmi ucBdmi1;
        private UCBdmi ucBdmi2;
        private UCMembers ucMembers2;
        private UCClasses ucClasses2;
    }
}
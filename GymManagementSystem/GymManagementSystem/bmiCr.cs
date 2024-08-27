using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GymManagementSystem
{
    public partial class bmiCr : Form
    {
        public bmiCr()
        {
            InitializeComponent();
        }

        private void btnCalculate_Click(object sender, EventArgs e)
        {
            if (double.TryParse(txtWeight.Text.Trim(), out double weight) &&
               double.TryParse(txtHeight.Text.Trim(), out double height))
            {
                if (height <= 0)
                {
                    MessageBox.Show("Height must be greater than zero.");
                    return;
                }

               
                height = height / 100;

                
                double bmi = weight / (height * height);
                lblCalculateBmi.Text = bmi.ToString("F2");

             
                string category;
                if (bmi < 18.5)
                {
                    category = "Underweight";
                }
                else if (bmi >= 18.5 && bmi < 24.9)
                {
                    category = "Normal weight";
                }
                else
                {
                    category = "Overweight";
                }

                lblBmiCategory.Text = category;
            }
            else
            {
                MessageBox.Show("Please enter valid numeric values for weight and height.");
            }
        }
    }
}
        

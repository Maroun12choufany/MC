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
    public partial class HomePage : Form
    {
        public HomePage()
        {
            InitializeComponent();
        }

        private void btnMembers_Click(object sender, EventArgs e)
        {
            ucMembers2.Visible = true;
            ucClasses2.Visible = false;
            ucBdmi2.Visible = false;
        }

        private void btnClasses_Click(object sender, EventArgs e)
        {

            ucClasses2.Visible = true;
            ucBdmi2.Visible = false;
            ucMembers2.Visible = false;


        }

        private void btnCalculator_Click(object sender, EventArgs e)
        {
            ucBdmi2.Visible = true;
            ucMembers2.Visible = false;
            ucClasses2.Visible = false;
        }
    }
}

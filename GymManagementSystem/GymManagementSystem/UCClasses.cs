using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace GymManagementSystem
{
    public partial class UCClasses : UserControl
    {
        private PrintDocument printDocument1;

        int index;

        #region Member Variables For Printing
        StringFormat strFormat; //Used to format the grid rows.
        ArrayList arrColumnLefts = new ArrayList();//Used to save left coordinates of columns
        ArrayList arrColumnWidths = new ArrayList();//Used to save column widths
        int iCellHeight = 0; //Used to get/set the datagridview cell height
        int iTotalWidth = 0; //
        int iRow = 0;//Used as counter
        bool bFirstPage = false; //Used to check whether we are printing first page
        bool bNewPage = false;// Used to check whether we are printing a new page
        int iHeaderHeight = 0; //Used for the header height
        #endregion
        private string connectionString = "Data Source=DESKTOP-MAKPUUC\\MSSQLSERVER02;Initial Catalog=GMS;Integrated Security=True";
        public UCClasses()
        {
            InitializeComponent();
            LoadClasses();
            printDocument1 = new PrintDocument();

            // Subscribe to the PrintPage event
            printDocument1.PrintPage += new PrintPageEventHandler(printDocument1_PrintPage);
        }

        

        private void LoadClasses()
        {
            string query = "SELECT * FROM Classes";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    dataGridViewClasses.DataSource = dt;
                }
            }
        }
        private void btnAddClasses_Click(object sender, EventArgs e)
        {
            string classID = txtClassID.Text.Trim();
            string className = txtClassName.Text.Trim();
            string instructor = txtInstructors.Text.Trim();
            string schedule = txtSchedules.Text.Trim();
            string capacityText = txtCapacities.Text.Trim();


            if (!int.TryParse(capacityText, out int capacity))
            {
                MessageBox.Show("Capacity must be a number.");
                return;
            }


            if (string.IsNullOrEmpty(classID) || string.IsNullOrEmpty(className) ||
                string.IsNullOrEmpty(instructor) || string.IsNullOrEmpty(schedule))
            {
                MessageBox.Show("All fields must be filled out.");
                return;
            }

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "INSERT INTO Classes (ClassID, ClassName, Instructor, Schedule, Capacity) " +
                                   "VALUES (@ClassID, @ClassName, @Instructor, @Schedule, @Capacity)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {

                        command.Parameters.AddWithValue("@ClassID", classID);
                        command.Parameters.AddWithValue("@ClassName", className);
                        command.Parameters.AddWithValue("@Instructor", instructor);
                        command.Parameters.AddWithValue("@Schedule", schedule);
                        command.Parameters.AddWithValue("@Capacity", capacity);

                        int result = command.ExecuteNonQuery();

                        if (result > 0)
                        {
                            MessageBox.Show("Class added successfully.");
                            LoadClasses();
                        }
                        else
                        {
                            MessageBox.Show("Failed to add class.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}");
            }
        }

        private void btnClearClasses_Click(object sender, EventArgs e)
        {
            txtClassID.Text = string.Empty;
            txtClassName.Text = string.Empty;
            txtInstructors.Text = string.Empty;
            txtSchedules.Text = string.Empty;
            txtCapacities.Text = string.Empty;
        }

        private void btnUpdateClasses_Click(object sender, EventArgs e)
        {
            string classID = txtClassID.Text.Trim();
            string className = txtClassName.Text.Trim();
            string instructor = txtInstructors.Text.Trim();
            string schedule = txtSchedules.Text.Trim();
            string capacityText = txtCapacities.Text.Trim();

            if (!int.TryParse(capacityText, out int capacity))
            {
                MessageBox.Show("Capacity must be a number.");
                return;
            }

            if (string.IsNullOrEmpty(classID) || string.IsNullOrEmpty(className) ||
                string.IsNullOrEmpty(instructor) || string.IsNullOrEmpty(schedule))
            {
                MessageBox.Show("All fields must be filled out.");
                return;
            }

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "UPDATE Classes SET ClassName = @ClassName, Instructor = @Instructor, " +
                                   "Schedule = @Schedule, Capacity = @Capacity WHERE ClassID = @ClassID";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ClassID", classID);
                        command.Parameters.AddWithValue("@ClassName", className);
                        command.Parameters.AddWithValue("@Instructor", instructor);
                        command.Parameters.AddWithValue("@Schedule", schedule);
                        command.Parameters.AddWithValue("@Capacity", capacity);

                        int result = command.ExecuteNonQuery();

                        if (result > 0)
                        {
                            MessageBox.Show("Class updated successfully.");
                            LoadClasses();
                        }
                        else
                        {
                            MessageBox.Show("Failed to update class.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}");
            }
        }

        private void btnDeleteClasses_Click(object sender, EventArgs e)
        {
            string classID = txtClassID.Text.Trim();

            if (string.IsNullOrEmpty(classID))
            {
                MessageBox.Show("Class ID must be provided.");
                return;
            }

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "DELETE FROM Classes WHERE ClassID = @ClassID";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ClassID", classID);

                        int result = command.ExecuteNonQuery();

                        if (result > 0)
                        {
                            MessageBox.Show("Class deleted successfully.");
                            LoadClasses(); 
                        }
                        else
                        {
                            MessageBox.Show("Failed to delete class.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}");
            }
        }

        private void btnPrintClasses_Click(object sender, EventArgs e)
        {
            if (index > -1)
            {

                //Open the print dialog
                PrintDialog printDialog = new PrintDialog();
                printDialog.Document = printDocument1;
                printDialog.UseEXDialog = true;

                //Get the document
                if (DialogResult.OK == printDialog.ShowDialog())
                {
                    printDocument1.DocumentName = "ClassesList";
                    printDocument1.Print();
                }
            }
        }
        private void printDocument1_BeginPrint(object sender, PrintEventArgs e)
        {
            try
            {
                strFormat = new StringFormat();
                strFormat.Alignment = StringAlignment.Near;
                strFormat.LineAlignment = StringAlignment.Center;
                strFormat.Trimming = StringTrimming.EllipsisCharacter;

                arrColumnLefts.Clear();
                arrColumnWidths.Clear();
                iCellHeight = 0;
                iRow = 0;
                bFirstPage = true;
                bNewPage = true;

                // Calculating Total Widths
                iTotalWidth = 0;
                foreach (DataGridViewColumn dgvGridCol in dataGridViewClasses.Columns)
                {
                    iTotalWidth += dgvGridCol.Width;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void printDocument1_PrintPage(object sender, PrintPageEventArgs e)
        {
            try
            {
                //Set the left margin
                int iLeftMargin = e.MarginBounds.Left;
                //Set the top margin
                int iTopMargin = e.MarginBounds.Top;
                //Whether more pages have to print or not
                bool bMorePagesToPrint = false;
                int iTmpWidth = 0;

                //For the first page to print set the cell width and header height
                if (bFirstPage)
                {
                    foreach (DataGridViewColumn GridCol in dataGridViewClasses.Columns)
                    {
                        iTmpWidth = (int)(Math.Floor((double)((double)GridCol.Width /
                                       (double)iTotalWidth * (double)iTotalWidth *
                                       ((double)e.MarginBounds.Width / (double)iTotalWidth))));

                        iHeaderHeight = (int)(e.Graphics.MeasureString(GridCol.HeaderText,
                                    GridCol.InheritedStyle.Font, iTmpWidth).Height) + 11;

                        // Save width and height of headres
                        arrColumnLefts.Add(iLeftMargin);
                        arrColumnWidths.Add(iTmpWidth);
                        iLeftMargin += iTmpWidth;
                    }
                }
                //Loop till all the grid rows not get printed
                while (iRow <= dataGridViewClasses.Rows.Count - 1)
                {
                    DataGridViewRow GridRow = dataGridViewClasses.Rows[iRow];
                    //Set the cell height
                    iCellHeight = GridRow.Height + 5;
                    int iCount = 0;
                    //Check whether the current page settings allo more rows to print
                    if (iTopMargin + iCellHeight >= e.MarginBounds.Height + e.MarginBounds.Top)
                    {
                        bNewPage = true;
                        bFirstPage = false;
                        bMorePagesToPrint = true;
                        break;
                    }
                    else
                    {
                        if (bNewPage)
                        {
                            //Draw Header
                            e.Graphics.DrawString("Classes Summary", new Font(dataGridViewClasses.Font, FontStyle.Bold),
                                    Brushes.Black, e.MarginBounds.Left, e.MarginBounds.Top -
                                    e.Graphics.MeasureString("Classes Summary", new Font(dataGridViewClasses.Font,
                                    FontStyle.Bold), e.MarginBounds.Width).Height - 13);

                            String strDate = DateTime.Now.ToLongDateString() + " " + DateTime.Now.ToShortTimeString();
                            //Draw Date
                            e.Graphics.DrawString(strDate, new Font(dataGridViewClasses.Font, FontStyle.Bold),
                                    Brushes.Black, e.MarginBounds.Left + (e.MarginBounds.Width -
                                    e.Graphics.MeasureString(strDate, new Font(dataGridViewClasses.Font,
                                    FontStyle.Bold), e.MarginBounds.Width).Width), e.MarginBounds.Top -
                                    e.Graphics.MeasureString("Classes Summary", new Font(new Font(dataGridViewClasses.Font,
                                    FontStyle.Bold), FontStyle.Bold), e.MarginBounds.Width).Height - 13);

                            //Draw Columns                 
                            iTopMargin = e.MarginBounds.Top;
                            foreach (DataGridViewColumn GridCol in dataGridViewClasses.Columns)
                            {
                                e.Graphics.FillRectangle(new SolidBrush(Color.LightGray),
                                    new Rectangle((int)arrColumnLefts[iCount], iTopMargin,
                                    (int)arrColumnWidths[iCount], iHeaderHeight));

                                e.Graphics.DrawRectangle(Pens.Black,
                                    new Rectangle((int)arrColumnLefts[iCount], iTopMargin,
                                    (int)arrColumnWidths[iCount], iHeaderHeight));

                                e.Graphics.DrawString(GridCol.HeaderText, GridCol.InheritedStyle.Font,
                                    new SolidBrush(GridCol.InheritedStyle.ForeColor),
                                    new RectangleF((int)arrColumnLefts[iCount], iTopMargin,
                                    (int)arrColumnWidths[iCount], iHeaderHeight), strFormat);
                                iCount++;
                            }
                            bNewPage = false;
                            iTopMargin += iHeaderHeight;
                        }
                        iCount = 0;
                        //Draw Columns Contents                
                        foreach (DataGridViewCell Cel in GridRow.Cells)
                        {
                            if (Cel.Value != null)
                            {
                                e.Graphics.DrawString(Cel.Value.ToString(), Cel.InheritedStyle.Font,
                                            new SolidBrush(Cel.InheritedStyle.ForeColor),
                                            new RectangleF((int)arrColumnLefts[iCount], (float)iTopMargin,
                                            (int)arrColumnWidths[iCount], (float)iCellHeight), strFormat);
                            }
                            //Drawing Cells Borders 
                            e.Graphics.DrawRectangle(Pens.Black, new Rectangle((int)arrColumnLefts[iCount],
                                    iTopMargin, (int)arrColumnWidths[iCount], iCellHeight));

                            iCount++;
                        }
                    }
                    iRow++;
                    iTopMargin += iCellHeight;
                }

                //If more lines exist, print another page.
                if (bMorePagesToPrint)
                    e.HasMorePages = true;
                else
                    e.HasMorePages = false;
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnExportClasses_Click(object sender, EventArgs e)
        {
            ExportData();
        }
        private void ExportData()
        {
            if (dataGridViewClasses.Rows.Count > 0)
            {
                Microsoft.Office.Interop.Excel.Application app = new Microsoft.Office.Interop.Excel.Application();
                Microsoft.Office.Interop.Excel.Workbook workbook = app.Workbooks.Add(Type.Missing);
                Microsoft.Office.Interop.Excel.Worksheet worksheet = null;

                app.Visible = true;
                worksheet = workbook.Sheets["Sheet1"];
                worksheet = workbook.ActiveSheet;
                worksheet.Name = "Exported Data";

                if (dataGridViewClasses.Rows.Count > 0)
                    for (int i = 1; i < dataGridViewClasses.Columns.Count + 1; i++)
                    {
                        worksheet.Cells[1, i] = dataGridViewClasses.Columns[i - 1].HeaderText;
                    }

                for (int i = 0; i < dataGridViewClasses.Rows.Count; i++)
                {
                    for (int j = 0; j < dataGridViewClasses.Columns.Count; j++)
                    {
                        worksheet.Cells[i + 2, j + 1] = dataGridViewClasses.Rows[i].Cells[j].Value.ToString();
                    }
                }
            }
            else
            {
                MessageBox.Show("DataGridView is empty", "Information",
                                MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void txtClassID_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar);
        }
    }
}
   

    





    

           

     
    
    


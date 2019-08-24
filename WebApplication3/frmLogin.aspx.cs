using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.IO;
using System.Windows;

namespace WebApplication3
{
    public partial class frmLogin : System.Web.UI.Page
    {
        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(@"Data Source=NOTE-ASUS\SQLEXPRESS;Initial Catalog=Students;User ID=josivan;Password=josivan");
            string query = "Select * from Students.Students where EmailAddr = '" + txtEmail.Text.Trim() + "' and FirstName = '" + txtPassword.Text.Trim() + "'";
            SqlDataAdapter sda = new SqlDataAdapter(query, sqlcon);

            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);

            if (dtbl.Rows.Count >= 1)
            {                
                Server.Transfer("frmWelcome.aspx");
            }

            else
            {
                lblVoid.Visible = true;
            }
        }
    }
}
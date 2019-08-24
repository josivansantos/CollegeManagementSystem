using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class frmInsertUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntInsert_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(@"Data Source=NOTE-ASUS\SQLEXPRESS;Initial Catalog=Students;User ID=josivan;Password=josivan");
            sqlcon.Open();
            SqlCommand cmd = sqlcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into Students.Students values ('" + FirstName.Text + "','" + LastName.Text + "','" + BirthDate.Text + "','" + EmailAddr.Text + "','" + Coutry.Text + "')";
            cmd.ExecuteNonQuery();
            sqlcon.Close();

            lblSuccess.Visible = true;

            FirstName.Text = String.Empty;
            LastName.Text  = String.Empty;
            BirthDate.Text = String.Empty;
            EmailAddr.Text = String.Empty;
            Coutry.Text    = String.Empty;
        }
    }
}
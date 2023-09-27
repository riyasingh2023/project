using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Electronic_items_2
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {   
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Dell\documents\visual studio 2010\Projects\Electronic items 2\Electronic items 2\App_Data\Database1.mdf;Integrated Security=True;User Instance=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * From RegTable where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Label1.Text = "Login successfull!!";
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("default.aspx");
            }
            else
            {
                Label1.Text = "Login Unsuccessfull!!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
      
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Electronic_items_2
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Dell\documents\visual studio 2010\Projects\Electronic items 2\Electronic items 2\App_Data\Database1.mdf;Integrated Security=True;User Instance=True");
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                String filepath = "SINGH/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/SINGH") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Product values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + filepath + "', '" + TextBox4.Text + "' )", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("default.aspx");
            }
        }
    }
}
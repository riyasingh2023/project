using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Electronic_items_2
{
    public partial class Reg : System.Web.UI.Page
    {
        string connStr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Dell\documents\visual studio 2010\Projects\Electronic items 2\Electronic items 2\App_Data\Database1.mdf;Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void register_Click(object sender, EventArgs e)
        {
            string connStr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Dell\documents\visual studio 2010\Projects\Electronic items 2\Electronic items 2\App_Data\Database1.mdf;Integrated Security=True;User Instance=True";

            using(SqlConnection conn = new SqlConnection(connStr)) {
                try {
                    conn.Open();
                    SqlCommand sqlcomm = new SqlCommand("insert into RegTable (name, email, password, gender) values (@name, @email, @pwd, @gender)", conn);
                        sqlcomm.Parameters.AddWithValue("@name",TextBox1.Text);
                        sqlcomm.Parameters.AddWithValue("@email",TextBox2.Text);
                        sqlcomm.Parameters.AddWithValue("@pwd",TextBox3.Text);
                        sqlcomm.Parameters.AddWithValue("@gender",Genderlist.SelectedItem.Value);
                        sqlcomm.ExecuteNonQuery();
                        Response.Redirect("Login1.aspx");
                        Label1.Text = "Registered Successfully";
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            

            


        }
    }
}
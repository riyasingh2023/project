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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
            //login session
            if (Session["username"] != null)
            {
                Label4.Text = "Logged in as" + Session["username"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                Label4.Text = "You can Login here...";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }
        }

        //protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //}
        //logout bbutton
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("default.aspx");
            Label4.Text = "You have Logged out Successfull";
        }
//searching the product
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Dell\documents\visual studio 2010\Projects\Electronic items 2\Electronic items 2\App_Data\Database1.mdf;Integrated Security=True;User Instance=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 where (Pname like'%" + TextBox1.Text + "%')or (ProductId like '%" + TextBox1.Text + "%')", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);//to fill the object in data table tempopary data
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        //addtocart code
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName =="AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddToCart.aspx?id=" +e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());

            }
        }
    }
}
 

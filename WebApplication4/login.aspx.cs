using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication4
{
    public partial class login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if
               (Session["userid"] != null)
            {
                Response.Redirect("Home.aspx");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string sqlmd = "select first_name,last_name,email,password from [userinfo] where email='" + email.Text.ToString() + "' and password='" + password.Text.ToString() + "'";
            SqlCommand insertcmd = new SqlCommand(sqlmd, con);
            SqlDataReader read = insertcmd.ExecuteReader();
            if (read.Read())
            {
                Session["userid"] = read.GetValue(0).ToString();
                Session["f_name"] = read.GetValue(1).ToString();
                Session["l_name"] = read.GetValue(2).ToString();
                con.Close();
                Response.Redirect("Home.aspx");

            }
            else
            {
                lblerror.Text = "Invalid User Credentials";
                lblerror.ForeColor = System.Drawing.Color.Red;
                con.Close();
                
            }
        }

    }
}
    

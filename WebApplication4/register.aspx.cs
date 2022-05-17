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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if
                (Session["userid"]!= null) {
                Response.Redirect("Home.aspx");
            }

        }

   

        protected void submit_Click1(object sender, EventArgs e)
        {
            con.Open();
            string insertqry = "insert into [userinfo](first_name,last_name,email,password)values(@firstname, @lastname ,@email, @password)";
            SqlCommand insertcmd = new SqlCommand(insertqry, con);
            insertcmd.Parameters.AddWithValue("@firstname",fname.Text.ToString());
            insertcmd.Parameters.AddWithValue("@lastname",lname.Text.ToString());
            insertcmd.Parameters.AddWithValue("@email",email.Text.ToString());
            insertcmd.Parameters.AddWithValue("@password",password.Text.ToString());


            insertcmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");

        }
    }
}
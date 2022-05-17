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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                loginph.Visible = true;
                logoutph.Visible = false;
            }
            else
            {
                loginph.Visible =false;
                logoutph.Visible=true;
            }
        }
    }
}
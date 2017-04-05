using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace Timetable.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            String cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin where userid='" + UserName.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                //args.IsValid = false;
                Label1.Text= "User Name Exist";
            }
            else
            {
                SqlDataSource1.Insert();
                Response.Redirect("~/Account/Login.aspx");
                resetData();
            }
            con.Close();
            
        }

        private void resetData()
        {
            UserName.Text = " ";
            Password.Text = " ";
            ConfirmPassword.Text = " ";
            Email.Text = " ";
        }

        


        
    }
}
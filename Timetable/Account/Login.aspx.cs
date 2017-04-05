using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Timetable.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            try
            {

                SqlDataSource1.SelectParameters[0].DefaultValue = Login1.UserName;
                SqlDataSource1.SelectParameters[1].DefaultValue = Login1.Password;
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                DataTable dt = dv.ToTable();
                Session["name"] = dt.Rows[0][1].ToString();
                Response.Redirect("~/AdminHome.aspx");
            }
            catch (Exception ef)
            {
                Login1.FailureText = "invalid details";
            }
        }
    }
}
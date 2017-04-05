using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Data;

namespace Timetable.SavePage
{
    public partial class TeacherPreference : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            add.Enabled = true;
            saves.Enabled = false;
            tname.Enabled = false;

            t1.Enabled = false;
            t2.Enabled = false;
            t3.Enabled = false;
            l1.Enabled = false;
            l2.Enabled = false;
            l3.Enabled = false;
            tothrs.Enabled = false;
        }

        protected void saves_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            resetData();
        }

        protected void resetData()
        {
            tname.Text = " ";
         
            t1.Text = " ";
            t2.Text = " ";
            t3.Text = " ";
            l1.Text = " ";
            l2.Text = " ";
            l3.Text = " ";
            tothrs.Text = " ";
        }

        protected void add_Click(object sender, EventArgs e)
        {
            add.Enabled = false;
            saves.Enabled = true;
            tname.Enabled = true;

            t1.Enabled = true;
            t2.Enabled = true;
            t3.Enabled = true;
            l1.Enabled = true;
            l2.Enabled = true;
            l3.Enabled = true;
            tothrs.Enabled = true;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
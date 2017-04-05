using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Collections;
using System.Data;
using System;

namespace Timetable.SavePage
{
    public partial class TeacherDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            add.Enabled = true;
            saves.Enabled = false;
            teacherid.Enabled = false;
            teachername.Enabled = false;
            email.Enabled = false;
            contact.Enabled = false;
        }

        protected void resetData()
        {
            teacherid.Text = " ";
            teachername.Text = " ";
            email.Text = " ";
            contact.Text = " ";
        }

        protected void saves_Click(object sender, System.EventArgs e)
        {
            SqlDataSource1.Insert();
            resetData();
        }

        protected void add_Click(object sender, System.EventArgs e)
        {
            add.Enabled = false;
            saves.Enabled = true;
            teacherid.Enabled = true;
            teachername.Enabled = true;
            email.Enabled = true;
            contact.Enabled = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
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
    public partial class SubjectDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            add.Enabled = true;
            saves.Enabled = false;
            branch.Enabled = false;
            subjectcode.Enabled = false;
            subjectname.Enabled = false;
            semester.Enabled = false;
        }

        protected void add_Click(object sender, EventArgs e)
        {
            add.Enabled = false;
            saves.Enabled = true;
            branch.Enabled = true;
            subjectcode.Enabled = true;
            subjectname.Enabled = true;
           semester.Enabled = true;
        }

        protected void saves_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            resetData();
        }

        protected void resetData()
        {
            branch.Text = " ";
            subjectcode.Text = " ";
            subjectname.Text = " ";
            semester.Text = " ";
        }
    }
}
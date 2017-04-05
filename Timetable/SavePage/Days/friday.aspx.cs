using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
//using Timetable;

namespace Timetable
{
    public partial class friday : System.Web.UI.Page
    {
        static int count1 = 1;
        static string s = "";
        static string s1 = "";
        static string s2 = "";
        static int count = 1;
        static int flag = 1;
        static int c = 0;
        static int next = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel4.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("Select subjectcode,subjectname from subjectdetails", con);
                    con.Open();
                    SqlDataReader sd;
                    sd = cmd.ExecuteReader();
                    DropDownList4.DataSource = sd;
                    DropDownList4.DataBind();
                    DropDownList4.Items.Insert(0, new ListItem("Select Subject", "NA"));
                    sd.Close();
                    SqlCommand cmd1 = new SqlCommand("Select teacherid,teachername,email,contact from Teacherdeatils", con);
                    sd = cmd1.ExecuteReader();
                    DropDownList5.DataSource = sd;
                    DropDownList5.DataBind();
                    DropDownList5.Items.Insert(0, new ListItem("Select Teacher", "NA"));
                    sd.Close();
                    SqlCommand cmd2 = new SqlCommand("Select teacherid,teachername,email,contact from Teacherdeatils", con);
                    sd = cmd2.ExecuteReader();
                    DropDownList6.DataSource = sd;
                    DropDownList6.DataBind();
                    DropDownList6.Items.Insert(0, new ListItem("Select Assisstant", "NA"));
                    sd.Close();
                    SqlCommand cmd3 = new SqlCommand("Select teacherid,teachername,email,contact from Teacherdeatils", con);
                    sd = cmd3.ExecuteReader();
                    DropDownList9.DataSource = sd;
                    DropDownList9.DataBind();
                    DropDownList9.Items.Insert(0, new ListItem("Select Teacher", "NA"));
                    sd.Close();
                    SqlCommand cmd4 = new SqlCommand("Select teacherid,teachername,email,contact from Teacherdeatils", con);
                    sd = cmd4.ExecuteReader();
                    DropDownList12.DataSource = sd;
                    DropDownList12.DataBind();
                    DropDownList12.Items.Insert(0, new ListItem("Select Teacher", "NA"));
                    sd.Close();
                    SqlCommand cmd5 = new SqlCommand("Select teacherid,teachername,email,contact from Teacherdeatils", con);
                    sd = cmd5.ExecuteReader();
                    DropDownList14.DataSource = sd;
                    DropDownList14.DataBind();
                    DropDownList14.Items.Insert(0, new ListItem("Select Teacher", "NA"));
                    sd.Close();
                    SqlCommand cmd6 = new SqlCommand("Select subjectcode,subjectname from subjectdetails", con);
                    sd = cmd6.ExecuteReader();
                    DropDownList8.DataSource = sd;
                    DropDownList8.DataBind();
                    DropDownList8.Items.Insert(0, new ListItem("Select Subject", "NA"));
                    sd.Close();
                    SqlCommand cmd7 = new SqlCommand("Select subjectcode,subjectname from subjectdetails", con);
                    sd = cmd7.ExecuteReader();
                    DropDownList11.DataSource = sd;
                    DropDownList11.DataBind();
                    DropDownList11.Items.Insert(0, new ListItem("Select Subject", "NA"));
                    sd.Close();
                    SqlCommand cmd8 = new SqlCommand("Select subjectcode,subjectname from subjectdetails", con);
                    sd = cmd8.ExecuteReader();
                    DropDownList13.DataSource = sd;
                    DropDownList13.DataBind();
                    DropDownList13.Items.Insert(0, new ListItem("Select Subject", "NA"));
                    sd.Close();
                    SqlCommand cmd9 = new SqlCommand("Select Id,classroom,lab from Room", con);
                    sd = cmd9.ExecuteReader();
                    DropDownList3.DataSource = sd;
                    DropDownList3.DataBind();
                    DropDownList3.Items.Insert(0, new ListItem("Select Lab Room", "NA"));
                    sd.Close();
                    SqlCommand cmd10 = new SqlCommand("Select Id,classroom,lab from Room", con);
                    sd = cmd10.ExecuteReader();
                    DropDownList7.DataSource = sd;
                    DropDownList7.DataBind();
                    DropDownList7.Items.Insert(0, new ListItem("Select Class Room", "NA"));
                    sd.Close();
                    //SqlCommand cmd11 = new SqlCommand("Insert into ROOM 1,"+DropDownList7.SelectedItem.Text+", "+DropDownList3.SelectedItem.Text, con);
                    /*  if (DropDownList11.Items.Contains(DropDownList8.SelectedItem))
                      {
                          DropDownList11.Items.IndexOf(DropDownList8.SelectedItem);
                          DropDownList11.SelectedItem.Enabled = false;
                      }*/
                }
            }
            //Panel1.Visible = true;
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList1.DataBind();
            if (DropDownList1.SelectedItem.Text != "Select")
            {
                Panel4.Visible = true;
            }
        }

        protected void Lab_CheckedChanged(object sender, EventArgs e)
        {
            Panel4.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = false;
            count = count + 1;
        }

        protected void Theory_CheckedChanged(object sender, EventArgs e)
        {
            Panel4.Visible = true;
            Panel3.Visible = true;
            Panel2.Visible = false;
        }


        protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time1='" + DropDownList15.SelectedItem.Text + "' and teacher1='" + DropDownList9.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();

                //      con.Open();
                args.IsValid = true;
                //      SqlCommand cm = con.CreateCommand();
                //      cm.CommandType = CommandType.Text;
                //              if (count1 == 1 && count == 1 && c == 0)
                //              {
                //   cm.CommandText = "IF EXISTS (Update Friday set classno2='" + DropDownList7.SelectedItem.Text + "',time4='" + DropDownList15.SelectedItem.Text + "',t4='" + DropDownList8.SelectedItem.Text + "',teacher4='" + DropDownList9.SelectedItem.Text + "',time5='" + DropDownList16.SelectedItem.Text + "',t5='" + DropDownList11.SelectedItem.Text + "',teacher5='" + DropDownList12.SelectedItem.Text + "',time6='" + DropDownList17.SelectedItem.Text + "',t6='" + DropDownList13.SelectedItem.Text + "',teacher6='" + DropDownList14.SelectedItem.Text + "' where section='" + DropDownList1.SelectedItem.Text + "')";
                //", con);
                //right                   cm.CommandText = "IF NOT EXISTS (select * from Friday where section='" + DropDownList1.SelectedItem.Text + "') Insert into Friday (section,classno,time1,t1,teacher1,time2,t2,teacher2,time3,t3,teacher3) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList7.SelectedItem.Text + "','" + DropDownList15.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','" + DropDownList9.SelectedItem.Text + "','" + DropDownList16.SelectedItem.Text + "','" + DropDownList11.SelectedItem.Text + "','" + DropDownList12.SelectedItem.Text + "','" + DropDownList17.SelectedItem.Text + "','" + DropDownList13.SelectedItem.Text + "','" + DropDownList14.SelectedItem.Text + "')";         
                //final              if (theory.Checked == true) 
                //final                  cm.CommandText = "IF NOT EXISTS (select * from Friday where section='" + DropDownList1.SelectedItem.Text + "') Insert into Friday (section,classno,time1,t1,teacher1,time2,t2,teacher2,time3,t3,teacher3) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList7.SelectedItem.Text + "','" + DropDownList15.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','" + DropDownList9.SelectedItem.Text + "','" + DropDownList16.SelectedItem.Text + "','" + DropDownList11.SelectedItem.Text + "','" + DropDownList12.SelectedItem.Text + "','" + DropDownList17.SelectedItem.Text + "','" + DropDownList13.SelectedItem.Text + "','" + DropDownList14.SelectedItem.Text + "') else Update Friday set classno2='" + DropDownList7.SelectedItem.Text + "',time4='" + DropDownList15.SelectedItem.Text + "',t4='" + DropDownList8.SelectedItem.Text + "',teacher4='" + DropDownList9.SelectedItem.Text + "',time5='" + DropDownList16.SelectedItem.Text + "',t5='" + DropDownList11.SelectedItem.Text + "',teacher5='" + DropDownList12.SelectedItem.Text + "',time6='" + DropDownList17.SelectedItem.Text + "',t6='" + DropDownList13.SelectedItem.Text + "',teacher6='" + DropDownList14.SelectedItem.Text + "' where section='" + DropDownList1.SelectedItem.Text + "'";



                //         cm.CommandText = "Insert into Friday (section,classno,time1,t1,teacher1,time2,t2,teacher2,time3,t3,teacher3) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList7.SelectedItem.Text + "','" + DropDownList15.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','" + DropDownList9.SelectedItem.Text + "','" + DropDownList16.SelectedItem.Text + "','" + DropDownList11.SelectedItem.Text + "','" + DropDownList12.SelectedItem.Text + "','" + DropDownList17.SelectedItem.Text + "','" + DropDownList13.SelectedItem.Text + "','" + DropDownList14.SelectedItem.Text + "')";
                //final                cm.ExecuteNonQuery();
                //  SqlDataAdapter ada = new SqlDataAdapter("Insert into Friday (section,classno,time1,t1,teacher1,time2,t2,teacher2,time3,t3,teacher3) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList7.SelectedItem.Text + "','" + DropDownList15.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','" + DropDownList9.SelectedItem.Text + "','" + DropDownList16.SelectedItem.Text + "','" + DropDownList11.SelectedItem.Text + "','" + DropDownList12.SelectedItem.Text + "','" + DropDownList17.SelectedItem.Text + "','" + DropDownList13.SelectedItem.Text + "','" + DropDownList14.SelectedItem.Text + "')",con);
                //  DataSet ds = new DataSet();
                //  ada.Fill(ds);
                //            }
                /*                if (count1 == 2 && count == 1 && c == 0)
                                {
                                    SqlCommand cd = new SqlCommand("Update Friday set classno2='" + DropDownList7.SelectedItem.Text + "',time4='" + DropDownList15.SelectedItem.Text + "',t4='" + DropDownList8.SelectedItem.Text + "',teacher4='" + DropDownList9.SelectedItem.Text + "',time5='" + DropDownList16.SelectedItem.Text + "',t5='" + DropDownList11.SelectedItem.Text + "',teacher5='" + DropDownList12.SelectedItem.Text + "',time6='" + DropDownList17.SelectedItem.Text + "',t6='" + DropDownList13.SelectedItem.Text + "',teacher6='" + DropDownList14.SelectedItem.Text + "' where section='" + DropDownList1.SelectedItem.Text + "')", con);
                                    cd.ExecuteNonQuery();
                                   // SqlDataAdapter ada = new SqlDataAdapter ("Update Friday set classno2='" + DropDownList7.SelectedItem.Text + "',time4='" + DropDownList15.SelectedItem.Text + "',t4='" + DropDownList8.SelectedItem.Text + "',teacher4='" + DropDownList9.SelectedItem.Text + "',time5='" + DropDownList16.SelectedItem.Text + "',t5='" + DropDownList11.SelectedItem.Text + "',teacher5='" + DropDownList12.SelectedItem.Text + "',time6='" + DropDownList17.SelectedItem.Text + "',t6='" + DropDownList13.SelectedItem.Text + "',teacher6='" + DropDownList14.SelectedItem.Text + "' where section='" + DropDownList1.SelectedItem.Text + "')", con);
                                   // DataSet ds = new DataSet();
                                   // ada.Fill(ds);
                                }                                                                       */
                //        if (count1 == 1 && count == 1 && c == 2)
                //           cm.CommandText = "Insert into Friday (section,labno,time,sub,teacher,assisstant) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "')";


                //    con.Close();
            }


            /*string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select time1 from Friday", con);
                DataSet ds = new DataSet();

                if (args.Value.ToString() == ds.Tables[Friday].Rows[0][time1].ToString()) //DropDownList9.SelectedItem
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
                 
            }*/


        }
        protected void NEXT_Click(object sender, EventArgs e)
        {
            /*if (flag == 1)
            {
                if (DropDownList1.SelectedItem.Text != "Select")
                {
                    DropDownList1.Enabled = false;
                    if (theory.Checked == true || lab.Checked == true)
                    {
                        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                        SqlConnection con = new SqlConnection(cs);
                        con.Open();
                        SqlCommand cm = con.CreateCommand();
                        cm.CommandType = CommandType.Text;
                        if (theory.Checked == true)
                            cm.CommandText = "IF NOT EXISTS (select * from Friday where section='" + DropDownList1.SelectedItem.Text + "') Insert into Friday (section,classno,time1,t1,teacher1,time2,t2,teacher2,time3,t3,teacher3) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList7.SelectedItem.Text + "','" + DropDownList15.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','" + DropDownList9.SelectedItem.Text + "','" + DropDownList16.SelectedItem.Text + "','" + DropDownList11.SelectedItem.Text + "','" + DropDownList12.SelectedItem.Text + "','" + DropDownList17.SelectedItem.Text + "','" + DropDownList13.SelectedItem.Text + "','" + DropDownList14.SelectedItem.Text + "') else Update Friday set classno2='" + DropDownList7.SelectedItem.Text + "',time4='" + DropDownList15.SelectedItem.Text + "',t4='" + DropDownList8.SelectedItem.Text + "',teacher4='" + DropDownList9.SelectedItem.Text + "',time5='" + DropDownList16.SelectedItem.Text + "',t5='" + DropDownList11.SelectedItem.Text + "',teacher5='" + DropDownList12.SelectedItem.Text + "',time6='" + DropDownList17.SelectedItem.Text + "',t6='" + DropDownList13.SelectedItem.Text + "',teacher6='" + DropDownList14.SelectedItem.Text + "' where section='" + DropDownList1.SelectedItem.Text + "'";
                        if (lab.Checked == true)
                            cm.CommandText = "IF NOT EXISTS (select * from Friday where section='" + DropDownList1.SelectedItem.Text + "') Insert into Friday (section,labno,time,sub,teacher,assisstant) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "') else Update Friday set labno='" + DropDownList3.SelectedItem.Text + "',time='" + DropDownList2.SelectedItem.Text + "',sub='" + DropDownList4.SelectedItem.Text + "',teacher='" + DropDownList5.SelectedItem.Text + "',assisstant='" + DropDownList6.SelectedItem.Text + "'";
                        cm.ExecuteNonQuery();
                        con.Close();
                        if ((DropDownList3.SelectedItem.Value != "NA" && DropDownList4.SelectedItem.Value != "NA" && DropDownList5.SelectedItem.Value != "NA" && DropDownList6.SelectedItem.Value != "NA") || (DropDownList7.SelectedItem.Value != "NA" && DropDownList8.SelectedItem.Value != "NA" && DropDownList9.SelectedItem.Value != "NA" && DropDownList11.SelectedItem.Value != "NA" && DropDownList12.SelectedItem.Value != "NA" && DropDownList13.SelectedItem.Value != "NA" && DropDownList14.SelectedItem.Value != "NA"))
                        {
                            int c = 0;
                            Panel4.Visible = true;
                            if (DropDownList1.SelectedItem.Text == s)
                            {
                                count1 = count1 + 1;
                            }
                            else
                            {
                                s = DropDownList1.SelectedItem.Text;
                                count1 = 1;
                                if (count1 == 1 && theory.Checked == true)
                                {
                                    //l1 = DropDownList7.SelectedItem;
                         //           DropDownList7.Items.Remove(DropDownList7.SelectedItem.Text);
                         //           DropDownList15.Items.Remove(DropDownList15.SelectedItem.Text);
                                    //DropDownList8.Items.Remove(DropDownList8.SelectedItem.Text);
                                    //DropDownList9.Items.Remove(DropDownList9.SelectedItem.Text);

                                    //DropDownList11.Items.Remove(DropDownList11.SelectedItem.Text);
                                    //DropDownList12.Items.Remove(DropDownList12.SelectedItem.Text);
                                    //DropDownList13.Items.Remove(DropDownList13.SelectedItem.Text);
                                    //DropDownList14.Items.Remove(DropDownList14.SelectedItem.Text);
                                }
                            }
                            if (count == 2)
                            {
                                lab.Enabled = false;
                                DropDownList3.Items.Remove(DropDownList3.SelectedItem.Text);
                                c = count;
                                count = 1;
                            }
                            if (count1 == 2)
                            {
                                if (lab.Enabled == false && c == 2)
                                {
                                    DropDownList1.Items.Remove(DropDownList1.SelectedItem.Text);
                                    c = 1;
                                }
                                else
                                {
                                    DropDownList7.Items.Remove(DropDownList7.SelectedItem.Text);
                                    DropDownList1.Items.Remove(DropDownList1.SelectedItem.Text);
                                }
                                Panel4.Visible = false;
                                lab.Enabled = true;
                                DropDownList1.Enabled = true;
                            }
                            theory.Checked = false;
                            lab.Checked = false;
                            Panel2.Visible = false;
                            Panel3.Visible = false;
                        }
                    }
                }
            }*/

            if (flag == 1)
            {
                if (DropDownList1.SelectedItem.Text != "Select")
                {
                    DropDownList1.Enabled = false;
                    if (theory.Checked == true || lab.Checked == true)
                    {
                        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                        SqlConnection con = new SqlConnection(cs);
                        con.Open();
                        SqlCommand cm = con.CreateCommand();
                        cm.CommandType = CommandType.Text;
                        if (theory.Checked == true)
                            cm.CommandText = "IF NOT EXISTS (select * from friday where section='" + DropDownList1.SelectedItem.Text + "') Insert into friday (section,classno,time1,t1,teacher1,time2,t2,teacher2,time3,t3,teacher3) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList7.SelectedItem.Text + "','" + DropDownList15.SelectedItem.Text + "','" + DropDownList8.SelectedItem.Text + "','" + DropDownList9.SelectedItem.Text + "','" + DropDownList16.SelectedItem.Text + "','" + DropDownList11.SelectedItem.Text + "','" + DropDownList12.SelectedItem.Text + "','" + DropDownList17.SelectedItem.Text + "','" + DropDownList13.SelectedItem.Text + "','" + DropDownList14.SelectedItem.Text + "') else Update friday set classno2='" + DropDownList7.SelectedItem.Text + "',time4='" + DropDownList15.SelectedItem.Text + "',t4='" + DropDownList8.SelectedItem.Text + "',teacher4='" + DropDownList9.SelectedItem.Text + "',time5='" + DropDownList16.SelectedItem.Text + "',t5='" + DropDownList11.SelectedItem.Text + "',teacher5='" + DropDownList12.SelectedItem.Text + "',time6='" + DropDownList17.SelectedItem.Text + "',t6='" + DropDownList13.SelectedItem.Text + "',teacher6='" + DropDownList14.SelectedItem.Text + "' where section='" + DropDownList1.SelectedItem.Text + "'";
                        if (lab.Checked == true)
                            cm.CommandText = "IF NOT EXISTS (select * from friday where section='" + DropDownList1.SelectedItem.Text + "') Insert into friday (section,labno,time,sub,teacher,assisstant) values ('" + DropDownList1.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList5.SelectedItem.Text + "','" + DropDownList6.SelectedItem.Text + "') else Update friday set labno='" + DropDownList3.SelectedItem.Text + "',time='" + DropDownList2.SelectedItem.Text + "',sub='" + DropDownList4.SelectedItem.Text + "',teacher='" + DropDownList5.SelectedItem.Text + "',assisstant='" + DropDownList6.SelectedItem.Text + "'where section='" + DropDownList1.SelectedItem.Text + "'";
                        cm.ExecuteNonQuery();
                        con.Close();
                        if (DropDownList1.SelectedItem.Text == "CS8")
                        {
                            next++;
                            if (next == 2)
                            {
                                Response.Redirect("~/SavePage/preview.aspx");

                            }
                        }
                        if ((DropDownList3.SelectedItem.Value != "NA" && DropDownList4.SelectedItem.Value != "NA" && DropDownList5.SelectedItem.Value != "NA" && DropDownList6.SelectedItem.Value != "NA") || (DropDownList7.SelectedItem.Value != "NA" && DropDownList8.SelectedItem.Value != "NA" && DropDownList9.SelectedItem.Value != "NA" && DropDownList11.SelectedItem.Value != "NA" && DropDownList12.SelectedItem.Value != "NA" && DropDownList13.SelectedItem.Value != "NA" && DropDownList14.SelectedItem.Value != "NA"))
                        {
                            int c = 0;
                            Panel4.Visible = true;
                            if (DropDownList1.SelectedItem.Text == s)
                            {
                                count1 = count1 + 1;
                            }
                            else
                            {
                                s = DropDownList1.SelectedItem.Text;
                                count1 = 1;
                                if (count1 == 1 && theory.Checked == true)
                                {
                                    //l1 = DropDownList7.SelectedItem;
                                    //           DropDownList7.Items.Remove(DropDownList7.SelectedItem.Text);
                                    //           DropDownList15.Items.Remove(DropDownList15.SelectedItem.Text);
                                    //DropDownList8.Items.Remove(DropDownList8.SelectedItem.Text);
                                    //DropDownList9.Items.Remove(DropDownList9.SelectedItem.Text);

                                    //DropDownList11.Items.Remove(DropDownList11.SelectedItem.Text);
                                    //DropDownList12.Items.Remove(DropDownList12.SelectedItem.Text);
                                    //DropDownList13.Items.Remove(DropDownList13.SelectedItem.Text);
                                    //DropDownList14.Items.Remove(DropDownList14.SelectedItem.Text);
                                }
                            }
                            if (count == 2)
                            {
                                lab.Enabled = false;
                                //DropDownList3.Items.Remove(DropDownList3.SelectedItem.Text);
                                c = count;
                                count = 1;
                            }
                            if (count1 == 2)
                            {
                                if (lab.Enabled == false && c == 2)
                                {
                                    DropDownList1.Items.Remove(DropDownList1.SelectedItem.Text);
                                    c = 1;
                                }
                                else
                                {
                                    // DropDownList7.Items.Remove(DropDownList7.SelectedItem.Text);
                                    DropDownList1.Items.Remove(DropDownList1.SelectedItem.Text);
                                }
                                Panel4.Visible = false;
                                lab.Enabled = true;
                                DropDownList1.Enabled = true;
                            }
                            theory.Checked = false;
                            lab.Checked = false;
                            Panel2.Visible = false;
                            Panel3.Visible = false;
                        }
                    }
                }
            }
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "Select")
                args.IsValid = false;
        }




        // &nbsp;<asp:CustomValidator ID="CustomValidator123" runat="server" ErrorMessage="TEACHER ALREADY SELECTED" ControlToValidate="DropDownList13" OnServerValidate="CustomValidator123_ServerValidate" ValidationGroup="g1" ></asp:CustomValidator>
        /* protected void CustomValidator123_ServerValidate(object source, ServerValidateEventArgs args)
         {
            
            s1 = DropDownList8.SelectedItem.Text;
             if (args.Value.Equals(s1))
            {
                 args.IsValid = false;
             }
             else
             {
               args.IsValid = true;
             }
         }*/

        public string Friday { get; set; }

        public int time1 { get; set; }

        protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time2='" + DropDownList16.SelectedItem.Text + "' and teacher2='" + DropDownList12.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();
                args.IsValid = true;
            }
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time3='" + DropDownList17.SelectedItem.Text + "' and teacher3='" + DropDownList14.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();
                args.IsValid = true;
            }
        }

        protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time='" + DropDownList2.SelectedItem.Text + "' and teacher='" + DropDownList5.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();
                args.IsValid = true;
            }
        }

        protected void CustomValidator6_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time='" + DropDownList2.SelectedItem.Text + "' and assisstant='" + DropDownList6.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();
                args.IsValid = true;
            }
        }

        protected void CustomValidator7_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time='" + DropDownList2.SelectedItem.Text + "' and labno='" + DropDownList3.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();
                args.IsValid = true;
            }
        }

        protected void CustomValidator8_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time1='" + DropDownList15.SelectedItem.Text + "' and classno='" + DropDownList7.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();
                args.IsValid = true;
            }
        }

        protected void CustomValidator9_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time2='" + DropDownList16.SelectedItem.Text + "' and classno='" + DropDownList7.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();
                args.IsValid = true;
            }
        }

        protected void CustomValidator10_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Friday where time3='" + DropDownList17.SelectedItem.Text + "' and classno='" + DropDownList7.SelectedItem.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                args.IsValid = false;
                flag = 0;

            }
            else
            {
                con.Close();
                args.IsValid = true;
            }
        }
    }
}
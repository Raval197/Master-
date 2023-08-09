using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.IO;

public partial class DoctorList : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();

    string cs = "server=localhost;userid=root;password=;database=hospitaldb";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {

            bindrepeater();
            DocName();
        }


    }

    private void bindrepeater()
    {
        string query = "SELECT * FROM hospitaldb.feedback";

        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandText = query;
        cmd.Connection = con;

        MySqlDataAdapter sda = new MySqlDataAdapter();
        DataSet ds = new DataSet();

        sda.SelectCommand = cmd;
        sda.Fill(ds, "feedback");

        RepeaterComment.DataSource = ds;
        RepeaterComment.DataBind();

    }



    void DocName()
    {
        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandText = "SELECT DoctorName FROM hospitaldb.doctortable";

        using (var reder = cmd.ExecuteReader())
        {
            while (reder.Read())
            {
                DDLDoctor.Items.Add(reder.GetString("DoctorName"));
            }
        }
        con.Close();
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            

            string query = "INSERT INTO hospitaldb.feedback (CUserName, CDocotrName, CDescription,CTime) VALUES ('" + txtUserName.Text + "','" + DDLDoctor.Text + "','" + txtAreacommet.Text + "','" + DateTime.Now + "')";

            MySqlConnection con = new MySqlConnection(cs);
            con.Open();

            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            con.Close();
            bindrepeater();
            
            txtUserName.Text = "";
            txtAreacommet.Text = "";
            
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        finally
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Submit Your Feedback..!')</script>");
        }
    }
}
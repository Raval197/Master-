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
    
        }


  


    }

    private void bindrepeater()
    {
        string query = "SELECT * FROM hospitaldb.doctortable";

        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandText = query;
        cmd.Connection = con;

        MySqlDataAdapter sda = new MySqlDataAdapter();
        DataSet ds = new DataSet();

        sda.SelectCommand = cmd;
        sda.Fill(ds, "doctortable");

        RepeaterComment.DataSource = ds;
        RepeaterComment.DataBind();

    


    }

    


 
}
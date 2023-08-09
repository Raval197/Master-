using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=hospitaldb";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindnews();
        }
    }

    private void bindnews()
    {
        string query = "SELECT * FROM hospitaldb.news";

        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandText = query;
        cmd.Connection = con;

        MySqlDataAdapter sda = new MySqlDataAdapter();
        DataSet ds = new DataSet();

        sda.SelectCommand = cmd;
        sda.Fill(ds, "newsTitle");

        RepeaterNEWS.DataSource = ds;
        RepeaterNEWS.DataBind();


    }
}
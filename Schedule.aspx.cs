using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

public partial class Schedule : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=hospitaldb";

    protected void Page_Load(object sender, EventArgs e)
    {
        GVbind();
    }

    void GVbind()
    {
        DataTable dtbl = new DataTable();

        MySqlConnection con = new MySqlConnection(cs);

        con.Open();
        MySqlDataAdapter sqlDa = new MySqlDataAdapter("SELECT * FROM hospitaldb.scheduleapp", con);
        sqlDa.Fill(dtbl);

        GVAddSchedule.DataSource = dtbl;
        GVAddSchedule.DataBind();

    }
}
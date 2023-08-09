using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
public partial class reg_DoctorLogin : System.Web.UI.Page
{

    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = "server=localhost;userid=root;password=;database=hospitaldb";
        con.Open();
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string DoctorUserID = txtUserID.Text.Trim();
        cmd.CommandText = "SELECT * FROM hospitaldb.doctortable WHERE DoctorUserID='" + txtUserID.Text + "' and DoctorPassword='" + txtPassword.Text + "' ";
        cmd.Connection = con;

        sda.SelectCommand = cmd;

        sda.Fill(ds, "doctortable");

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["DoctorUserID"] = DoctorUserID;
            Response.Redirect("~/doctor/ManageDoctorsProfile.aspx");
        }

        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Password or Doctor ID')</script>");
        }
    }
}
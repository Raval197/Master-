using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Appointment : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();

    string cs = "server=localhost;userid=root;password=;database=hospitaldb";

    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["UserEmail"] == null)
        {
           Response.Redirect("~/user/ManageUserProfile.aspx");

        }
        else
        con.ConnectionString = "server=localhost;userid=root;password=;database=hospitaldb";
        con.Open();
        showdata();
        pnlEditUSer.Visible = false;
    }

    public void showdata()
    {
        cmd.CommandText = "SELECT * FROM hospitaldb.usertable WHERE UserEmail= '" + Session["UserEmail"] + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "usertable");

        lblUserName.Text = ds.Tables[0].Rows[0]["UserName"].ToString();

        lblMobile.Text = ds.Tables[0].Rows[0]["UserMobile"].ToString();
        lblHome.Text = ds.Tables[0].Rows[0]["UserEmail"].ToString();

    }

    protected void btnappointmt_Click(object sender, EventArgs e)
    {
       
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        pnlEditUSer.Visible = true;
        pnlUserInfo.Visible = false;
    }
    protected void btnInsertEdit_Click(object sender, EventArgs e)
    {
        string cs = "server=localhost;userid=root;password=;database=hospitaldb";

        using (MySqlConnection con = new MySqlConnection(cs))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE hospitaldb.usertable SET UserName='" + txtUserName.Text + "', UserMobile='" + txtMobile.Text + "', UserHomeTown='" + txtHome.Text + "' WHERE UserEmail='" + txtEmail.Text + "' ", con);

            cmd.ExecuteNonQuery();


            Response.Write("<script> alert('Data has Updated') </script>");

            pnlEditUSer.Visible = false;
            pnlUserInfo.Visible = true;
            btnEdit.Visible = true;

        }
    }
    protected void btnNotEdit_Click(object sender, EventArgs e)
    {
        pnlEditUSer.Visible = false;
        pnlUserInfo.Visible = true;
    }
}
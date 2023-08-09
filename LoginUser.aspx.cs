using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;

public partial class reg_LoginUser : System.Web.UI.Page
{
    string cs = "server=localhost;userid=root;password=;database=hospitaldb";
    MySqlCommand cmd = new MySqlCommand();
    MySqlConnection con = new MySqlConnection();
    MySqlDataAdapter sda = new MySqlDataAdapter();
    DataSet ds = new DataSet();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserEmail"] != null)
        {
            Response.Redirect("~/user/ManageUserProfiles.aspx");
        }
        else
        con.ConnectionString = "server=localhost;userid=root;password=;database=hospitaldb";
        con.Open();

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {

            string UserEmail = txtEmail.Text.Trim();
            cmd.CommandText = "SELECT * FROM hospitaldb.usertable WHERE UserEmail='" + txtEmail.Text + "' and UserPassword='" + txtPassword.Text + "' ";

            cmd.Connection = con;

            sda.SelectCommand = cmd;
            sda.Fill(ds, "usertable");




         if(ds.Tables[0].Rows.Count > 0)
        {
            Session["UserName"] = UserEmail;
            Response.Redirect("~/index.aspx");
        }

        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Password or Email')</script>");
        }
    
    }

}
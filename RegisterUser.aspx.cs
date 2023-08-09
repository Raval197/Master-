using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;

public partial class reg_RegisterUser : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsingin_Click(object sender, EventArgs e)
    {

        if (checkemail() == true)
        {
            lblalreademsg.Text = "Your Email Already Registered with Us";
            txtEmail.BackColor = System.Drawing.Color.PaleGreen;


        }
        else
        {
            try
            {
                string cs = "server=localhost;userid=root;password=;database=hospitaldb";

                string query = "INSERT INTO hospitaldb.usertable(UserName, UserMobile, UserEmail, UserHomeTown, UserPassword) VALUES ('" + txtUserName.Text + "', '" + txtMobile.Text + "', '" + txtEmail.Text + "', '" + txtHometown.Text + "', '" + txtPassword.Text + "')";

                MySqlConnection con = new MySqlConnection(cs);
                con.Open();

                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();


                con.Close();
                txtPassword.Text = "";
                txtUserName.Text = "";
                txtMobile.Text = "";
                txtHometown.Text = "";
                txtEmail.Text = "";

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Register Successful')</script>");
                Response.Redirect("LoginUser.aspx");
                
            }

        }

    }

    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        String mycon = "server=localhost;userid=root;password=;database=hospitaldb";
        String myquery = "Select * from hospitaldb.usertable where UserEmail='" + txtEmail.Text + "'";
        MySqlConnection con = new MySqlConnection(mycon);
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        MySqlDataAdapter da = new MySqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }




  
   
}
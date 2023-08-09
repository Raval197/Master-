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
    string cs = "server=localhost;userid=root;password=;database=hospitaldb";
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

        DocName();
        
    }

    void DocName()
    {
        MySqlConnection con = new MySqlConnection(cs);
        MySqlCommand cmd = new MySqlCommand();

        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandText = "SELECT distinct DoctorName FROM hospitaldb.doctortable";

        using (var reder = cmd.ExecuteReader())
        {
            while (reder.Read())
            {
                ddlDoctor.Items.Add(reder.GetString("DoctorName"));
            }
        }
        con.Close();
    }

    protected void btnappointmt_Click(object sender, EventArgs e)
    {
        try
        {

            string query = "INSERT INTO hospitaldb.appointment (patientName, mobileNumber, email,address,doctor,DateTime) VALUES ('" + txtPatintName.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtAdress.Text + "','" + ddlDoctor.Text + "','" + txtdate.Text + "')";

            MySqlConnection con = new MySqlConnection(cs);
            con.Open();

            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            con.Close();

            txtAdress.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtPatintName.Text = "";
            


        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

        finally
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Succssfull Add Appointment Please Waiting Approve the appointment Admin')</script>");
        }
    }



    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar3.SelectedDate.ToString("d");
        Calendar3.Visible = false;
    }
    protected void Calendar3_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.Red;
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar3.Visible)
        {
            Calendar3.Visible = false;
        }
        else
        {
            Calendar3.Visible = true;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-BP7OD30\SQLEXPRESS;Initial Catalog=EducationSystem;Integrated Security=True;Encrypt=False;TrustServerCertificate=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            connection.Open();
            string InsertQuery = "EXEC InsertFacultyData @FacultyId='" + TextBox1.Text + "',@Salutation='" + RadioButtonList1.SelectedValue + "'," +
                "@Facultyname='" + TextBox2.Text + "',@Department='" + DropDownList1.SelectedValue + "';";

            SqlCommand cmd = new SqlCommand(InsertQuery, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
           
            string script = "alert('Successfully added');";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            
            
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    void GetDataToGrid()
    {
        connection.Open();
        SqlCommand cmd = new SqlCommand("EXEC GetFacultyData", connection);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable dataTable = new DataTable();
        adapter.Fill(dataTable);
        connection.Close();
        GridView1.DataSource = dataTable;
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        GetDataToGrid();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox2.Text  = DropDownList1.SelectedValue = "";
        RadioButtonList1.ClearSelection();
    }
}
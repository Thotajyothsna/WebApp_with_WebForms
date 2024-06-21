using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentPortal : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-BP7OD30\SQLEXPRESS;Initial Catalog=EducationSystem;Integrated Security=True;Encrypt=False;TrustServerCertificate=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetDataToGrid();
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            connection.Open();
            string InsertQuery = "EXEC InsertData @StudentId=" + TextBox1.Text + ",@StudentName='" + TextBox2.Text + "'" +
                ",@Gender='" + DropDownList2.SelectedValue + "',@Email='" + TextBox3.Text + "',@DateOfBirth='" + TextBox4.Text + "';";

            SqlCommand cmd = new SqlCommand(InsertQuery, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
            //MessageBox.Show("Inserted Successfully");
            string script = "alert('Successfully added');";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            //Response.Write("Inserted Successfully");
            GetDataToGrid();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

    void GetDataToGrid()
    {
        connection.Open();
        SqlCommand cmd = new SqlCommand("EXEC GetData", connection);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataTable dataTable = new DataTable();
        adapter.Fill(dataTable);
        connection.Close();
        GridView1.DataSource = dataTable;
        GridView1.DataBind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        try
        {
            connection.Open();
            string UpdateQuery = "EXEC UpdateData @StudentId=" + TextBox1.Text + ",@StudentName='" + TextBox2.Text + "'" +
                ",@Gender='" + DropDownList2.SelectedValue + "',@Email='" + TextBox3.Text + "',@DateOfBirth='" + TextBox4.Text + "';";

            SqlCommand cmd = new SqlCommand(UpdateQuery, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
            string script = "alert('Successfully Updated');";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            //Response.Write("Updated Successfully");
            GetDataToGrid();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            connection.Open();
            string DeleteQuery = "EXEC DeleteData @StudentId=" + TextBox1.Text + ";";

            SqlCommand cmd = new SqlCommand(DeleteQuery, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
            string script = "alert('Successfully Deleted');";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            //Response.Write("Deleted Successfully");
            GetDataToGrid();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

    protected void Button4_Click1(object sender, EventArgs e)
    {
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = DropDownList2.SelectedValue = "";
    }
}
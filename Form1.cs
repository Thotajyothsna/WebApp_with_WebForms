using System.Data.SqlClient;

namespace EmployeeManagementSys
{
    public partial class Form1 : Form
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\oooyeeeee\OneDrive\Documents\Employee.mdf;Integrated Security=True;Connect Timeout=30");
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("DELETE Employee WHERE EmployeeId='" + textBox1.Text + "'", connection);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Deleted Data Successfully");
            connection.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Employee VALUES('" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "','" + textBox4.Text + "','" + comboBox1.Text + "')", connection);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Insert Data Successfully");
            connection.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox2.Text = textBox3.Text = textBox4.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("UPDATE EMPLOYEE SET EmployeeName='" + textBox2.Text + "',Address='" + textBox3.Text + "',Salary='" + textBox4.Text + "' ,Role='" + comboBox1.Text + "' WHERE EmployeeId='" + textBox1.Text + "'", connection);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Updated Data Successfully");
            connection.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            textBox1.Text = textBox2.Text = textBox3.Text = textBox4.Text = comboBox1.Text = "";
        }
    }
}

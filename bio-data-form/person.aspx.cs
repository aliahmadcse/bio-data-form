using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace bio_data_form
{
    public partial class person : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=desktop-8evnu8b\sqlexpress;Initial Catalog=biodata;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = nameTxtBox.Text;
            string fatherName = fnTxtBox.Text;
            string gender = "";
            string dob = TextBox3.Text;
            string maritialStatus = "";
            string religion = "";
            string qualification = "";
            string address = TextBox4.Text;
            string phoneNo = TextBox5.Text;
            string email = TextBox6.Text;
            if (maleRadioBtn.Checked)
            {
                gender = "male";
            }
            else
            {
                gender = "female";
            }

            if (RadioButton3.Checked)
            {
                maritialStatus = "Single";
            }
            else
            {
                maritialStatus = "Married";
            }

            if (RadioButton5.Checked)
            {
                religion = "islam";
            }
            else
            {
                religion = "others";
            }
            if (CheckBox1.Checked)
            {
                qualification = "Matric";
            }
            if (CheckBox2.Checked)
            {
                qualification += " " + "Fsc";
            }
            if (CheckBox3.Checked)
            {
                qualification += " " + "Bs/Bsc Engineering";
            }
            if (CheckBox4.Checked)
            {
                qualification += " " + "others";
            }
            if (!validations(name,fatherName,phoneNo))
            {
                Label1.Text = "Error in Name, Father Name or Phone Number";
                return;
            }
            else
            {
                Label1.Text = "";
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into userData values ('" + name + "','" + fatherName + "','" + gender + "','" + dob + "','" + maritialStatus + "','" + religion + "','" + qualification + "','" + address + "','" + phoneNo + "','" + email + "')";
            cmd.ExecuteNonQuery();
            Label1.Text = "";
        }
        public bool validations(string name,string fatherName,string phoneNo)
        {
            bool flag = true;
            if (!name.All(Char.IsLetter))
            {
                flag = false;
            }
            if (!fatherName.All(Char.IsLetter))
            {
                flag = false;
            }
            if (!phoneNo.All(Char.IsDigit))
            {
                flag = false;
            }

            return flag;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            nameTxtBox.Text = "";
            fnTxtBox.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }
    }
}
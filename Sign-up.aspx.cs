using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CW2_AD
{
    public partial class Sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signupbtn_Click(object sender, EventArgs e)
        {
            if (Password.Text == CPassword.Text)
            {
                RegisterUserUsingCode(Email.Text, username.Text, Password.Text, DOB.Text);
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Password not matched.')</script>");
            }
        }

        private void RegisterUserUsingCode(string email, string username, string password, string dob)
        {
            string connectionString = @"Data Source = .\SqlExpress;" +
                "Database = RopeyDVDs;" +
                "Trusted_Connection = True;";
            string query = "Insert INTO User(Username, UserType, UserPassword, Email, Date_of_Birth) " +
                "Values('" + username + "', '" + "" +"' , '"+ password + "' , '" + Email +"' , '"+ dob + "')";
            SqlConnection connection = new SqlConnection(connectionString);
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open(); 
            }
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}
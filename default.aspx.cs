using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Reflection;




namespace unibook
{
    public partial class _default : System.Web.UI.Page

    {

        public string UniBookConnectionString { get; private set; }

        public static string EnkriptoPasswordBase64(string Password)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(Password);
            byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
            return Convert.ToBase64String(inArray);
        }
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void Button1_Click(object sender, EventArgs e)

        {
            if (Page.IsValid)
            {
                string connectionString = WebConfigurationManager.ConnectionStrings["UniBook1ConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {

                    string passwordKoduar = EnkriptoPasswordBase64(TextBox4.Text);
                    string query = "SELECT COUNT(*) FROM Users where Email=@Email";

                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                    conn.Open();

                    int nrUser = (int)cmd.ExecuteScalar();

                    if (nrUser > 0)
                    {
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {  string sql = "insert into Users (Username,Lastname,Email,Password,Phone,Iduni) Values(@Username,@Lastname,@Email,@Password,@Phone,@Iduni)   ";
                        SqlCommand cmd1 = new SqlCommand(sql, conn);
                        cmd1.Parameters.AddWithValue("@Username", TextBox1.Text);
                        cmd1.Parameters.AddWithValue("@Lastname", TextBox2.Text);
                        cmd1.Parameters.AddWithValue("@Email", TextBox3.Text);
                        cmd1.Parameters.AddWithValue("@Password", passwordKoduar);
                        cmd1.Parameters.AddWithValue("@Phone", TextBox6.Text);
                        cmd1.Parameters.AddWithValue("@Iduni", DropDownList1.SelectedItem.Value);
                        int nrExec = (int) cmd1.ExecuteNonQuery();

                        if (nrExec == 1)
                        {
                            Response.Redirect("Login.aspx");

                        }


                    }
                }



            }
        }
    }
}
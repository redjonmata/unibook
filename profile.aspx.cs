using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Security.Cryptography;

namespace unibook
{
    public partial class profile : System.Web.UI.Page
    {
        public static string EnkriptoPasswordBase64(string Password)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(Password);
            byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
            return Convert.ToBase64String(inArray);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            string connectionstring = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            var uname = Context.User.Identity.Name;
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand com = new SqlCommand("Profile", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@useri", uname);


                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                D2.DataSource = ds;
                D2.DataBind();


            }
        }
            protected void Edit(object sender, EventArgs e)
            {
                Panel1.Visible = true;
            }
            protected void Changepass(object sender, EventArgs e)
            {
                Panel2.Visible = true;
            }
            protected void Apply(object sender, EventArgs e)
            {
                string user = Context.User.Identity.Name;
                string constr = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;


                using (SqlConnection cn = new SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand("Editim", cn);

                    cmd.Parameters.AddWithValue("@emer", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@mbiemer", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@nr", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@user", user);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cn.Open();
                    Panel1.Visible = false;
                }
            }


            protected void Save_Changes(object sender, EventArgs e)
            {
                string user = Context.User.Identity.Name;
                string constr = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    string passwordKoduar = EnkriptoPasswordBase64(TextBox5.Text);
                    string query = "Select count (Iduser) from Users where Username=@Username And Password=@oldpass";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Username", user);
                    cmd.Parameters.AddWithValue("@oldpass", passwordKoduar);
                    con.Open();
                    int a = Convert.ToInt32(cmd.ExecuteScalar());
                    if (a >= 1)
                    {

                        using (SqlConnection cn = new SqlConnection(constr))
                        {
                            string passKoduar = EnkriptoPasswordBase64(TextBox6.Text);
                            SqlCommand cmd1 = new SqlCommand("NdryshoPass", cn);
                            cmd1.Parameters.AddWithValue("@useri", user);
                            cmd1.Parameters.AddWithValue("@pass2", passKoduar);
                            cmd1.CommandType = CommandType.StoredProcedure;
                            cn.Open();
                            Label1.Text = "Password changed";
                        Panel2.Visible = false;
                        }
                    }
                    else
                    {
                        Label1.Text = "Old Password not valid.";
                    }

                }
            }


        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string user = Context.User.Identity.Name;
            string constr = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string sql = "Select Iduser From Users where Username=@name AND Roli='Admin'";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@name", user);
                con.Open();
                int b = Convert.ToInt32(cmd.ExecuteScalar());
                if (b >= 1)
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('You are not a Admin !!');</script>");
                }
            }
        }
    }
    } 
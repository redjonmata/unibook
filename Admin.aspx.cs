using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace unibook
{
    public partial class Admin : System.Web.UI.Page
    {
        string connectionstring = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                string query = "Select Count (ISBN) From Book";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                int a=Convert.ToInt32(cmd.ExecuteScalar());
                Label1.Text = "UniBook ka " + a + " libra!";
                string query1 = "Select Count(Iduser) From Users";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                int b = Convert.ToInt32(cmd1.ExecuteScalar());
                Label2.Text = "UniBook ka " + b + " perdorues!";
            }
            AfishoLibra();
        }
        protected void AfishoLibra()
        {
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand cmd = new SqlCommand("afishim", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                var da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        protected void grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
                int Id = Int32.Parse(id);
                con.Open();
                string query = "Delete from Book Where ISBN=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", Id);
                cmd.ExecuteNonQuery();
                AfishoLibra();
            }
        }
    }
}
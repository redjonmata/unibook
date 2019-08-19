using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
namespace unibook
{
    public partial class Books : System.Web.UI.Page
    {
        string connectionstring = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)

        {
            if (!Page.IsPostBack)
            {

                Afisho();

            }

        }





        public void Afisho()
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            var uname = Context.User.Identity.Name;
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                SqlCommand com = new SqlCommand("afishim_libra", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@usname", uname);


                con.Open();
                var adapter = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                grid.DataSource = ds;
                grid.DataBind();

            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                if (uploadimage.HasFile)
                {
                    var uname = Context.User.Identity.Name;

                    string strname = uploadimage.FileName.ToString();
                    uploadimage.PostedFile.SaveAs(Server.MapPath("upload/") + strname);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("isertimlibrash", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Autori", tbautori.Text);
                    cmd.Parameters.AddWithValue("@Titulli", tbtitulli.Text);
                    cmd.Parameters.AddWithValue("@Viti_botimit", tbviti.Text);
                    cmd.Parameters.AddWithValue("@Gjendja", tbgjendja.Text);
                    cmd.Parameters.AddWithValue("@Cmimi", tbcmimi.Text);
                    cmd.Parameters.AddWithValue("@Foto", "upload/" + strname);
                    cmd.Parameters.AddWithValue("@Id_fakultet", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@usname", uname);
                    int result = cmd.ExecuteNonQuery();

                    lblMessage.Visible = true;
                    lblMessage.Text = "Data Uploaded successfully";
                    if (result > 0)
                    {
                        Afisho();
                    }
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Failed to Add Book Data !";
                }
            }
        }

      

        protected void grid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                string id = grid.DataKeys[e.RowIndex].Value.ToString();
                int Id = Int32.Parse(id);
                con.Open();
                string query = "Delete from Book Where ISBN=@id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", Id);
                cmd.ExecuteNonQuery();
                Afisho();
            }
        }
    }
}




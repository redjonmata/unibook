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
    public partial class searchform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string box = Convert.ToString(Session["test"]);



            String constr = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {

                SqlCommand cmd = new SqlCommand("searchbook", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@titulli", box + "%");
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                detail.DataSource = ds;
                detail.DataBind();



            }
        }

        protected void Kerko(object sender, EventArgs e)
        {
            Session["Test"] = txtbox.Text;
            Response.Redirect("searchform.aspx");

        }
    }
}
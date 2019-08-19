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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) { 
            String constr = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            using(SqlConnection cn=new SqlConnection(constr)){
                SqlCommand cmd = new SqlCommand("afishim", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                           cn.Open();
                var da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                grid.DataSource = ds;
                grid.DataBind();
            }
             
        }}



        protected void Kerko (object sender, EventArgs e)
        {
            Session["Test"] = txtbox1.Text;
            Response.Redirect("searchform.aspx");
           
        }

       
    }
}
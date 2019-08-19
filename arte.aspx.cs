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
    public partial class arte : System.Web.UI.Page
    {
        string constr = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {



            using (SqlConnection cn = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("arte", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                grid.DataSource = ds;
                grid.DataBind();
            }

        }
        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {


            MenuItem selectedItem = NavigationMenu.SelectedItem;

            string a = NavigationMenu.SelectedItem.Text;

            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd1 = new SqlCommand("fakultet", con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@emfakultet", a);
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                grid.DataSource = ds1;
                grid.DataBind();
            }

        }
        protected void Kerko(object sender, EventArgs e)
        {
            Session["Test"] = txtbox.Text;
            Response.Redirect("searchform.aspx");

        }
    }
}
         
       
        


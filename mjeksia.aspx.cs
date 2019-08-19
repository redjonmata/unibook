﻿using System;
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
    public partial class mjeksia : System.Web.UI.Page
    {
        string constr = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("mjekesia", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Grid.DataSource = ds;
                Grid.DataBind();
            }
        }
        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {


            MenuItem selectedItem = NavigationMenu.SelectedItem;

            string a = NavigationMenu.SelectedItem.Text;

            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd1 = new SqlCommand("fakultet_mjekesia", con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@emfakultet", a);
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                Grid.DataSource = ds1;
                Grid.DataBind();
            }

        }
        protected void Kerko(object sender, EventArgs e)
        {
            Session["Test"] = txtbox.Text;
            Response.Redirect("searchform.aspx");

        }
    }
}
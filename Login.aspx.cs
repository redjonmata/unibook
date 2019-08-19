using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;
using System.Security.Cryptography;

namespace unibook
{
    public partial class Login : System.Web.UI.Page
    {
        public object FormAutherisationRedirection { get; private set; }
        public static string EnkriptoPasswordBase64(string Password)
        {
            byte[] bytes = System.Text.Encoding.Unicode.GetBytes(Password);
            byte[] inArray = HashAlgorithm.Create("SHA1").ComputeHash(bytes);
            return Convert.ToBase64String(inArray);
        }
        public string UniBookConnectionString { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void LoginPerdorues(object sender,EventArgs e)
        {
            int userid = 0;
            string constr = WebConfigurationManager.ConnectionStrings["Unibook1ConnectionString"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(constr))
            {
                string passwordKoduar = EnkriptoPasswordBase64( Login1.Password);
                string query = "Select * from Users where Username=@Username And Password=@Password";
                SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                cmd.Parameters.AddWithValue( "@Password", passwordKoduar);
                cn.Open();
               userid = Convert.ToInt32(cmd.ExecuteScalar());
                if (userid == 0)
                {
                    Login1.FailureText = "Username ose passwordi gabim";

                }
                else
                {
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                    
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}
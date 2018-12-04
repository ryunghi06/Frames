using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;


namespace Frames
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Comment.mdf;Integrated Security=True");
            using (SqlCommand cmd = new SqlCommand("spCheckUserCredentials", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["Password"].ToString() == txtPassword.Text)
                    {
                        Response.Redirect("Comment.aspx?Username=" + txtUsername.Text);
                    }
                    else
                    {
                        lblError.Text = "Invalid Username and Password";
                    }
                }
                else
                {
                    lblError.Text = "Invalid Username and Password";
                }
            }
        }
    }
}
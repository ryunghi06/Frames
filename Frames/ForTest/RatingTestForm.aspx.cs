using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Frames
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static string CS = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Semester4\COMP213\COMP213-Iteration2\COMP213-Iteration2\App_Data\Database1.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        SqlDataReader rdr;
        int rate = 0;


        private static Hashtable Ratings = new Hashtable();

        protected void Page_Load(object sender, EventArgs e)
        {
            Image3.ImageUrl = Request.QueryString["ImageUrl"];
            //string query = $"SELECT RateValue from tblRates where PhototName = '{Image3.ImageUrl}'";
            //con.Open();
            //cmd = new SqlCommand(query, con);
            //rdr = cmd.ExecuteReader();
            //if(rdr.HasRows)
            //{
            //    while(rdr.Read())
            //    {
            //        rate = rdr.GetInt32(0);
            //    }
            //}
            //con.Close();

            lblRatings.Text = $"YOu have rated this photo {rate} ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddRating.aspx");
        }

        protected void btnRatings_Click(object sender, EventArgs e)
        {
            // This is to store the current rating of the photograph
            int ratings = Rating1.CurrentRating;
            //string query = $"INSERT INTO tblRates(PhototName, RateValue) VALUES('{Image3.ImageUrl}', {Rating1.CurrentRating})";
            //con.Open();
            //cmd = new SqlCommand(query, con);
            //cmd.ExecuteNonQuery();
            //con.Close();
            //lblRatings.Text = $"You gave {Rating1.CurrentRating} rates to the photograph "; 

        }

        protected void btnUpdateRating_Click(object sender, EventArgs e)
        {
            int ratings = Rating1.CurrentRating;
            //string query = $"UPDATE tblRates SET RateValue = {ratings} WHERE PhototName ='{Image3.ImageUrl}' ";
            //con.Open();
            //cmd = new SqlCommand(query, con);
            //cmd.ExecuteNonQuery();
            //con.Close();
            //lblRatings.Text = $"You re-rated {Rating1.CurrentRating} to the photograph ";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Frames
{
    public partial class Comment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Comment.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Username"] != null)
            {
                if (Request.QueryString["Username"] != "")
                {
                    CommentsBind();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        private void CommentsBind()
        {
            SqlDataAdapter da = new SqlDataAdapter("spGetParentComment", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridViewComment.DataSource = ds;
            GridViewComment.DataBind();
        }
      
        protected void btnCommentPublish_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("spCommentInsert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", Request.QueryString["Username"].ToString());
            cmd.Parameters.AddWithValue("@CommentMessage", txtComment.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            CommentsBind();
        }

        protected void btnReplyParent_Click(object sender, EventArgs e)
        {
            GridViewRow row = (sender as Button).NamingContainer as GridViewRow;            
            Label lblChildCommentID = (Label)row.FindControl("lblCommentID");
            TextBox txtCommentParent = (TextBox)row.FindControl("txtCommentReplyParent");
            SqlCommand cmd = new SqlCommand("spCommentReplyInsert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", Request.QueryString["Username"].ToString());
            cmd.Parameters.AddWithValue("@CommentMessage", txtCommentParent.Text);
            cmd.Parameters.AddWithValue("@ParentCommentID", lblChildCommentID.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            CommentsBind();
        }

        protected void btnReplyChild_Click(object sender, EventArgs e)
        {
            GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
            Label lblParentCommentID = (Label)row.FindControl("lblParentCommentID");
            Label lblChildCommentID = (Label)row.FindControl("lblChildCommentID");
            TextBox txtCommentChild = (TextBox)row.FindControl("txtCommentReplyChild");
            SqlCommand cmd = new SqlCommand("spCommentReplyInsert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", Request.QueryString["Username"].ToString());
            cmd.Parameters.AddWithValue("@CommentMessage", txtCommentChild.Text);
            cmd.Parameters.AddWithValue("@ParentCommentID", lblParentCommentID.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            CommentsBind();
        }

        protected void GridViewComment_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            foreach (GridViewRow row in GridViewComment.Rows)
            {
                Label lblParentCommentID = (Label)row.FindControl("lblCommentID");
                GridView GridChild = (GridView)row.FindControl("GridViewChild");

                SqlCommand cmd = new SqlCommand("spGetParentCommentByParentCommentID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ParentCommentID", lblParentCommentID.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet dschild = new DataSet();
                da.Fill(dschild);
                if (dschild.Tables[0].Rows.Count > 0)
                {
                    GridChild.DataSource = dschild;
                    GridChild.DataBind();
                }
                else
                {
                    GridChild.DataSource = null;
                    GridChild.DataBind();
                }
            }
        }
    }
}
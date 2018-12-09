using System;
using System.Collections.Generic;
using System.Linq;
using Frames.DataObject;
using Frames.DatabaseConnector;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Frames
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Photo photo = null;
            DatabaseConn dAO = new DatabaseConn();
            photo = dAO.SelectPhotograph(2);
            Image1.ImageUrl = photo.photoLocation;
            TextBox1.Text = photo.photoName;
            TextBox2.Text = photo.photoDescription;
            TextBox3.Text = photo.photoTags;
            TextBox4.Text = photo.photoPrice + "";
            TextBox5.Text = Convert.ToString(photo.catId);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Photo photo = null;
            Photo p2 = new Photo(photo.photoId, TextBox1.Text, TextBox2.Text, TextBox3.Text, Convert.ToDecimal(TextBox4.Text), Convert.ToInt32(TextBox5.Text));
            DatabaseConn dAO = new DatabaseConn();
            dAO.update(p2);
        }
    }
}
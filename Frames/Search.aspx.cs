using System;
using Frames.DataObject;
using Frames.DatabaseConnector;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Frames
{
    public partial class Search1 : System.Web.UI.Page

    {
        List<Photo> list = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Search search = new Search(TextBox1.Text,TextBox3.Text,TextBox5.Text);
            DatabaseConn dao = new DatabaseConn();
            list= dao.Search(search);
            for (int i = 0; i < list.Count; i++)
            {
                Photo photo = list[i];
                Image image = new Image();
                image.Width =100;
                image.Height = 100;
                image.ImageUrl = photo.photoLocation;
                Label label = new Label();
                label.Text = photo.photoName+" ";
                Label label2 = new Label();
                label2.Text = "$"+photo.photoPrice+" ";
                Label label3 = new Label();
                label3.Text = photo.photoDescription + "";
                this.Page.Controls.Add(image);
                this.Page.Controls.Add(label);
                this.Page.Controls.Add(label2);
                this.Page.Controls.Add(label3);
            }
        }
    }
}
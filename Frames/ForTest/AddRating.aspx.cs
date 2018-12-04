using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Frames
{
    public partial class AddRateing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (string strFileName in Directory.GetFiles(Server.MapPath("~/Photographers/")))
            {
                ImageButton imageButton = new ImageButton();
                FileInfo fileInfo = new FileInfo(strFileName);
                imageButton.ImageUrl = "~/Photographers/" + fileInfo.Name;
                imageButton.Width = Unit.Pixel(100);
                imageButton.Height = Unit.Pixel(100);
                imageButton.Style.Add("padding", "5px");
                imageButton.Click += new ImageClickEventHandler(imageButton_Click);

                // Adding the images to the panel
                Panel1.Controls.Add(imageButton);
            }
            /*
            string[] filesInDirectory = Directory.GetFiles(Server.MapPath("~/PhotoGrapher"));
            List<string> images = new List<string>(filesInDirectory.Count());

            foreach(string item in filesInDirectory)
            {
                images.Add(String.Format("~/PhotoGrapher/{0}", System.IO.Path.GetFileName(item)));
            }

            RepeaterImage.DataSource = images;
            RepeaterImage.DataBind();
            */
        }

        void imageButton_Click(Object sender, ImageClickEventArgs e)
        {
            // Redirecting the Url of the selected image to the next web page by getting the Url of the image from the QueryString to print the larger form of the image 
            Response.Redirect("./RatingTestForm.aspx?ImageUrl=" + ((ImageButton)sender).ImageUrl);
        }
    }
}
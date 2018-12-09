using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Frames.DataObject;
using Frames.DatabaseConnector;
using System.Net;

namespace Frames
{
    public partial class viewphotograph : System.Web.UI.Page
    {
        private Photo photo;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DatabaseConn dbConn = new DatabaseConn();
                photo = dbConn.SelectPhotograph(10002);
                ViewImageCtrl.ImageUrl = photo.WatermarkedLocation;

                //photo.WatermarkedLocation;
            }
            catch(Exception ex)
            {

            }
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            try
            {
                DatabaseConn dbConn = new DatabaseConn();
                int count = dbConn.DownloadPhoto(10002, 2);
                if (count == 3)
                {
                    lblResult.Text = "You've used 3 times download.";
                }
                else
                {
                    string strURL = photo.photoLocation;
                    WebClient req = new WebClient();
                    HttpResponse response = HttpContext.Current.Response;
                    response.Clear();
                    response.ClearContent();
                    response.ClearHeaders();
                    response.Buffer = true;
                    response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(photo.WatermarkedLocation) + "\"");
                    byte[] data = req.DownloadData(Server.MapPath(photo.WatermarkedLocation));
                    response.BinaryWrite(data);
                    response.End();
                }
                
            }
            catch (Exception ex)
            {
            }
        }
    }
}
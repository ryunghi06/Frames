using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Frames.DataObject;
using Frames.DatabaseConnector;

namespace Frames
{
    public partial class UploadPhoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddPhoto_Click(object sender, EventArgs e)
        {
            // Here will be the functionality for adding the photograph's information to the DB 
            // Getting the information from the photographer
            Photo uploadImage = new Photo();
            uploadImage.photoName= txtPhotoName.Text;
            uploadImage.photoDescription = txtPhotoDesc.Text;
            uploadImage.photoLocation = txtPhotoLocation.Text;
            uploadImage.photoTags = txtPhotoKeywords.Text;

            try
            {
                int phPrice = Convert.ToInt32(txtPhotoPrice.Text);
                uploadImage.photoPrice = Convert.ToDecimal(phPrice);
            }
            catch
            {
                txtPhotoPrice.Text = "The price of photo should be greater than zero.";
            }

            // Making a query to add the information to the DB

            // conditions that I would like to check for before adding the information into the database
            // check if file was uploaded, put the ConvertIntoInt in try and catch block 
            // We need atleast the photoName and photoPrice
            if (uploadImage.photoName != "" && filePhotoUpload.HasFile)
            {
                // upload the file
                // I have to create a folder for each photographer's name
                uploadImage.photoFileLocation = Server.MapPath("~/Photographers" + uploadImage.userId + "/" + filePhotoUpload.FileName);

                filePhotoUpload.PostedFile.SaveAs(uploadImage.photoFileLocation);
               
                lblOutputSuccessMsg.Text = "The image " + uploadImage.photoName + " has been uploaded";
                DatabaseConn dbConn = new DatabaseConn();
                dbConn.UploadPhoto(uploadImage);
            }
            else
            {
                // Show the message saying that the picture cannot be uploaded
                lblOutputFailMessage.Text = "Please try again";
            }
        }
    }
}
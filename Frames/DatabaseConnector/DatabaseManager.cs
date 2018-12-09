using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Frames.DataObject;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Collections;
using System.Data;

namespace Frames.DatabaseConnector
{
    public class DatabaseConn
    {

        public SqlConnection GetSqlConnection()
        {
            string sqlcon = WebConfigurationManager.ConnectionStrings["LocalDatabase"].ConnectionString;
            SqlConnection con = new SqlConnection(sqlcon);
            return con;
        }
        public Photo SelectPhotograph(int id)
        {
            using (SqlConnection con = GetSqlConnection())
            {
                Photo p = null;
                string sql = "select photolocation,PhotoName,CatID,PhotoDescription,PhotoTags,PhotoPrice,WatermarkedLocation,PhotoFileLocation from Photographs where PhotoId =" + id;
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    con.Open();
                    using (SqlDataReader reader = com.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                decimal d = reader.GetDecimal(5);
                                p = new Photo(reader.GetString(0), reader.GetString(1), reader.GetInt32(2), reader.GetString(3), reader.GetString(4), reader.GetDecimal(5), reader.GetString(6), reader.GetString(7));
                            }
                        }
                        return p;
                    }
                }
            }
        }
        public List<Photo> SelectPhotographerImages(Int64 UserID)
        {
            List<Photo> photoArray = new List<Photo>();
            using (SqlConnection con = GetSqlConnection())
            {
                Photo p = null;
                string sql = "select photolocation,photoname,CatID,photodescription,phototags,photoprice from photos where UserId = @param1 ";

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@Param1", UserID);
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                p = new Photo(reader.GetString(0), reader.GetString(1), reader.GetInt32(2), reader.GetString(3), reader.GetString(4), reader.GetDecimal(5), reader.GetString(6), reader.GetString(7));
                            }
                        }
                    }
                }
            }
            return photoArray;

        }
        public void update(Photo photo)
        {
            using (SqlConnection con = GetSqlConnection())
            {
                string sql = "update Photos set PhotoName='" + photo.photoName + "',PhotoDescription='" + photo.photoDescription + "',PhotoTags='" + photo.photoTags + "',PhotoPrice='" + photo.photoPrice + "',CatId='" + photo.catId + "' where PhotoId='" + photo.photoId + "'";
                using (SqlCommand com = new SqlCommand(sql, con)) {
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }
        }

        public List<Photo> Search(Search search)
        {
            using (SqlConnection con = GetSqlConnection())
            {
                List<Photo> list = new List<Photo>();
                Photo p = null;
                string sql = "select photolocation,photoname,CatID,photodescription,phototags,photoprice from Photographs where photoname like '%" + search.getPhotoName() + "%'and phototags like '%" + search.getPhotoTags() + "%' and CatID like '%" + search.getCategory() + "%'";
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    con.Open();
                    using (SqlDataReader reader = com.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                p = new Photo(reader.GetString(0), reader.GetString(1), reader.GetInt32(2), reader.GetString(3), reader.GetString(4), reader.GetDecimal(5), reader.GetString(6), reader.GetString(7));
                                list.Add(p);
                            }
                        }
                        return list;
                    }
                }
            }
        }

        public void AddRating(Int64 photoId, int rating)
        {
            double ratings = 0.0;
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand cmd = new SqlCommand("AddRating", con))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    // The param names are exactly the same with SP WriteData's
                    cmd.Parameters.AddWithValue("@photoID", photoId);
                    cmd.Parameters.AddWithValue("@ratings", rating);
                    cmd.Parameters.AddWithValue("@avgRatings", ratings);
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void UploadPhoto(Photo photo)
        {
            using (SqlConnection con = GetSqlConnection())
            {
                string sql = @"INSERT INTO dbo.Photographs (UserId, CatId, PhotoName, PhotoDescription, PhotoTags, PhotoPrice, PhotoLocation, PhotoFileLocation, WatermarkedLocation) 
                                VALUES ( @param1, @param2, @param3, @param4, @param5, @param6, @param7, @param8, @param9)";

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@param1", 1);
                    cmd.Parameters.AddWithValue("@param2", 2);
                    cmd.Parameters.AddWithValue("@param3", photo.photoName);
                    cmd.Parameters.AddWithValue("@param4", photo.photoDescription);
                    cmd.Parameters.AddWithValue("@param5", photo.photoTags);
                    cmd.Parameters.AddWithValue("@param6", photo.photoPrice);
                    cmd.Parameters.AddWithValue("@param7", photo.photoLocation);
                    cmd.Parameters.AddWithValue("@param8", photo.photoFileLocation);
                    cmd.Parameters.AddWithValue("@param9", photo.photoFileLocation);

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public int DownloadPhoto(Int64 photoId, Int64 userID)
        {
            int downloadCount = 0;
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand cmd = new SqlCommand("UpsertDownload", con))
                {                 
                   
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    // The param names are exactly the same with SP WriteData's
                    cmd.Parameters.AddWithValue("@photoID", photoId);
                    cmd.Parameters.AddWithValue("@userID", userID);
                    SqlParameter returnParameter = cmd.Parameters.AddWithValue("@downloadCount", downloadCount);
                    returnParameter.Direction = ParameterDirection.Output; ;
                    //SqlParameter returnParameter = cmd.Parameters.Add("downloadCount", SqlDbType.Int);
                    //returnParameter.Direction = ParameterDirection.ReturnValue;
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    downloadCount = (int)cmd.Parameters["@downloadCount"].Value;
                }
            }
            return downloadCount;
        }
    }
}
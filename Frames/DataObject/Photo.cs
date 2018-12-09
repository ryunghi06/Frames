using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Frames.DataObject
{
    public class Photo
    {
       public Int64 photoId { get; set; }
        public int catId { get; set; }
        public string userId { get; set; }
        public string photoName { get; set; }
        public string photoDescription { get; set; }
        public string photoTags { get; set; }
        public decimal photoPrice { get; set; }
        public string photoLocation { get; set; }
        public string photoFileLocation { get; set; }
        public string WatermarkedLocation { get; set; }
        public Photo(Int64 id,string name, string description, string tag, decimal price,int catId)
        {
            this.photoName = name;
            this.photoDescription= description;
            this.photoTags = tag;
            this.photoPrice = price;
            this.photoId = id;
            this.catId = catId;
        }
        public Photo(string photoLocation, string name, int catId, string description, string tag, decimal price, string waterMarkedPath, string realPath)
        {
            this.photoName = name;
            this.photoDescription = description;
            this.photoTags = tag;
            this.photoPrice = price;
            this.catId = catId;
            this.photoLocation = photoLocation;
            this.WatermarkedLocation = waterMarkedPath;
            this.photoFileLocation = realPath;

        }
        public Photo() { }
    }
}
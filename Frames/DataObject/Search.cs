using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Frames.DataObject
{
    public class Search
    {
        string catId;
        string userId;
        string photoName;
        string photoTags;
        string category;
        public Search(string photoName, string photoTags, string category) {
            this.photoName = photoName;
            this.photoTags = photoTags;
            this.category = category;
        }
        public string getPhotoName() {
            return photoName;
        }
        public string getPhotoTags()
        {
            return photoTags;
        }
        public string getCategory()
        {
            return category;
        }
    }
}
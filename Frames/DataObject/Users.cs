using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Frames.DataObject
{
    public class Users
    {
        public Int64 UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public Char UserRole { get; set; }
        public String ProfilePhoto { get; set; }

        public Users(Int64 userId, string fName, string lName, string userName, string email, Char role, string profilePhoto)
        {
            UserId = userId;
            FirstName = fName;
            LastName = lName;
            UserName = userName;
            Email = email;
            UserRole = role;
            ProfilePhoto = profilePhoto;
        }
    }
}
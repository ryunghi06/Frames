using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Frames
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.GetPostBackEventReference(this, string.Empty);
        }

        protected void OnSignup(object sender, EventArgs e)
        {
            string url = "Signup.aspx";
            string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
            ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
        }
    }
}
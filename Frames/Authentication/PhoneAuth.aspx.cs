using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Dynamic;
using System.Net;
using System.IO;

namespace Frames.Authentication
{
    public partial class PhoneAuth : System.Web.UI.Page
    {
        private static String strAuthCode;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendAuth_Click(object sender, EventArgs e)
        {
            Random rand = new Random(Environment.TickCount);
            Char[] authChar = new Char[4];
            authChar[0] = Convert.ToChar(rand.Next(48, 57));
            authChar[1] = Convert.ToChar(rand.Next(65, 90));
            authChar[2] = Convert.ToChar(rand.Next(48, 57));
            authChar[3] = Convert.ToChar(rand.Next(65, 90));

            strAuthCode = new string(authChar);
            string accountKey = "DC54244Z3Y7xNZjJy31dl4Cp3Y4Wb4D7";

            string message = "Your Authentication Code is " + strAuthCode; ;
            var url = string.Format("http://smsgateway.ca/SendSMS.aspx?CellNumber={0}&AccountKey={1}&MessageBody={2}",
            usrPhone.Text, accountKey, message);

            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(url);
            request.Method = "GET";
            String test = String.Empty;
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            {
                Stream dataStream = response.GetResponseStream();
                StreamReader reader = new StreamReader(dataStream);
                ErrorMessage.Text = reader.ReadToEnd();
                reader.Close();
                dataStream.Close();
            }
        }

        protected void btnSConfirmAuth_Click(object sender, EventArgs e)
        {
            if (authCode.Text != strAuthCode)
            {
                ErrorMessage.Text = "Authentication Code Incorrect";
            }
            else
            {
                ErrorMessage.Text = "Authentication Approved";
            }
        }
    }
}
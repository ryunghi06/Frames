using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Net;

namespace Frames.Authentication
{
    public partial class EmailAuth : System.Web.UI.Page
    {
        private static String strAuthCode;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendAuth_Click(object sender, EventArgs e)
        {
            try
            {
                Random rand = new Random(Environment.TickCount);
                Char[] authChar = new Char[4];
                authChar[0] = Convert.ToChar(rand.Next(48, 57));
                authChar[1] = Convert.ToChar(rand.Next(65, 90));
                authChar[2] = Convert.ToChar(rand.Next(48, 57));
                authChar[3] = Convert.ToChar(rand.Next(65, 90));

                strAuthCode = new string(authChar);

                string smtpSvr = "smtp.gmail.com";  //gmail smtp server
                int smtpPort = 587;                 //gmail smtp port
                string gmailAcct = "frame.service.noreply@gmail.com"; //edit the string to reflect the gmail account used to send the email 
                string password = "1234Frames";           //edit the string to reflect the password of the used gmail account

                MailAddress SendTo = new MailAddress(usrEmail.Text);

                MailMessage MyMessage = new MailMessage(gmailAcct, usrEmail.Text);

                MyMessage.Subject = "Frames Authentication Code";
                MyMessage.Body = "Your Authentication Code is " + strAuthCode;

                SmtpClient emailClient = new SmtpClient(smtpSvr, smtpPort);
                NetworkCredential cred = new NetworkCredential(gmailAcct, password);
                emailClient.UseDefaultCredentials = false;
                emailClient.Credentials = cred;
                emailClient.EnableSsl = true;
                emailClient.Send(MyMessage);
            }
            catch (Exception ex)
            {
                  ErrorMessage.Text = ex.Message;
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
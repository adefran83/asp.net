using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sample.Demos
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Test Message";
            myMessage.Body = "Hello World, this is the email body";
            myMessage.From = new MailAddress("adefran83@gmail.com", "Me");
            myMessage.To.Add(new MailAddress("adefran83@gmail.com", "Anthony DeFrancesco"));

            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);
        }
    }
}
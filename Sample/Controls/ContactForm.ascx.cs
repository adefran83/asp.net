using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;

namespace Sample.Controls
{
    public partial class ContactForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (!string.IsNullOrEmpty(PhoneHome.Text) || !string.IsNullOrEmpty(PhoneBusiness.Text))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //string filename = Server.MapPath("~/App_Code/ContactForm.txt");
                //string mailBody = File.ReadAllText(filename);

                //mailBody = mailBody.Replace("##Name##", Name.Text);
                //mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
                //mailBody = mailBody.Replace("##HomePhone##", PhoneHome.Text);
                //mailBody = mailBody.Replace("##BusinessPhone##", PhoneBusiness.Text);
                //mailBody = mailBody.Replace("##Comments##", Comments.Text);

                //MailMessage myMessage = new MailMessage();
                //myMessage.Subject = "Response from Web Site";
                //myMessage.Body = mailBody;

                //myMessage.From = new MailAddress("adefran83@gmail.com", "Anthony DeFrancesco");
                //myMessage.To.Add(new MailAddress("adefran83@gmail.com", "Anthony DeFrancesco"));
                //myMessage.ReplyToList.Add(new MailAddress(EmailAddress.Text));

                //SmtpClient myClient = new SmtpClient();
                //myClient.Send(myMessage);

                Message.Visible = true;
                MessageSentPara.Visible = true;
                formTable.Visible = false;
                System.Threading.Thread.Sleep(5000);
            }
        }
    }
}
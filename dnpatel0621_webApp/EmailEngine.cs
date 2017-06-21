using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Configuration;

namespace dnpatel0621_webApp
{
    public static class EmailEngine
    {
        public static void SendEmail(string RecepientEmail, string Subject, String body)
        {
            using (MailMessage MailMsg = new MailMessage())
            {
                MailMsg.From = new MailAddress(ConfigurationManager.AppSettings["UserName"]);
                MailMsg.Subject = Subject;
                MailMsg.Body = body;
                MailMsg.IsBodyHtml = true;
                MailMsg.To.Add(new MailAddress(RecepientEmail));
                SmtpClient Smtp = new SmtpClient();
                Smtp.Host = ConfigurationManager.AppSettings["Host"];
                Smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSsl"]);
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                NetworkCred.UserName = ConfigurationManager.AppSettings["UserName"];
                NetworkCred.Password = ConfigurationManager.AppSettings["Password"];
                Smtp.UseDefaultCredentials = true;
                Smtp.Credentials = NetworkCred;
                Smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]);
                Smtp.Send(MailMsg);
            }
        }
    }
}
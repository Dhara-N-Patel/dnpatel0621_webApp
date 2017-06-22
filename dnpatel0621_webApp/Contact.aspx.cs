using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace dnpatel0621_webApp
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnContact_Click(object sender, EventArgs e)
        {
            //try
            //{
                ContactUS(form_name.Text, form_lastname.Text, form_Company.Text, form_phone.Text, form_message.Text, form_email.Text);
            //}
            //catch
            //{
            //    Response.Redirect("EmailFailed.html");
            //}
            Response.Redirect("ThankYou.html");
        }
        private string PopulateEmailBody(string FName, string LName, string Email, string Company, string Phone, string Message)
        {
            string body = string.Empty;
            using (StreamReader Reader = new StreamReader(Server.MapPath("~/EmailTemplate.html")))
            {
                body = Reader.ReadToEnd();
            }
            body = body.Replace(("form_name"), FName);
            body = body.Replace(("form_lastname"), LName);
            body = body.Replace(("form_email"), Email);
            body = body.Replace(("form_phone"), Phone);
            body = body.Replace(("form_Company"), Company);
            body = body.Replace(("form_message"), Message);

            return body;
        }

        private void ContactUS(string FName, string LName, string Company, string Phone, string Message, string EmailID)
        {
            var ToEmailID = "dharapatel.0621@gmail.com";
            string body = this.PopulateEmailBody(FName, LName, EmailID, Company, Phone, Message);
            EmailEngine.SendEmail(ToEmailID, "New Contact Request from " + FName + " " + LName, body);
        }
    }
}
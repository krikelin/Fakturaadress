using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Security.Cryptography;

public partial class Contact : System.Web.UI.Page
{
       // From http://www.a1vbcode.com/vbtip-149.asp
    private String GenerateHash(String SourceText) {
       // Create an encoding object to ensure the encoding standard for the source text
        var Ue = new UnicodeEncoding();
        //Retrieve a byte array based on the source text
        byte[] ByteSourceText = Ue.GetBytes(SourceText);
        //Instantiate an MD5 Provider object
        var Md5 = new MD5CryptoServiceProvider();
        //Compute the hash value from the source
        var ByteHash  = Md5.ComputeHash(ByteSourceText);
        //And convert it to String format for return
        return Convert.ToBase64String(ByteHash);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    /// <summary>
    /// Send a support ticket
    /// </summary>
    /// <param name="hash"></param>
    /// <param name="email"></param>
    /// <param name="comments"></param>
    /// <param name="text"></param>
    /// <param name="type"></param>
    private void SendHelpQuery(String hash,string email, string to, string summary, string comments, string text, string type, string ip)
    {
        // Send an auto reply
        var d = new System.Web.Mail.MailMessage();

        d.Body = "Tack för din förfrågan. Din förfrågan har nu skickats. Vi besvarar den så fort vi kan";
        d.Body += "\n Var god svara inte på detta mejl då denna använder en fiktiv epostadress. Vid ytterligare förfrågan använd formuläret igen";

        d.Subject = "Autosvar från fakturaadress.se";
        d.From = to;
        d.To = email;
        System.Web.Mail.SmtpMail.SmtpServer = "smtprelay1.telia.com";
        System.Web.Mail.SmtpMail.Send(d);

        // Send the help query
        d = new System.Web.Mail.MailMessage();

        d.Body = "";
        d.Body += "\n "+summary+"\n\n"+comments+"\n\n Från: "+email+" \n\n Från IP-nummer:"+ip;

        d.Subject = summary;
        d.From = email;
        d.To = to;
       
    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {
        var ip = Request.UserHostAddress;
        String summary = summaryTextBox.Text;
        String email = emailTextBox.Text;
        String text = commentsTextBox.Text;
        SendHelpQuery("drsounds@gmail.com", email, new ContentManager().SupportEmail, summary, text, "", "", ip.ToString());

    }
}
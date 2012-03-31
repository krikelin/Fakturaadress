using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DNA.UI.JQuery;
public partial class Admin_Content : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Get content resolver
        IContentManager cm = new ContentManager();
        if (Request.RequestType != "POST")
        {
            // Prepare the fields with current data
            LeftColumnText.Text = cm.LeftColumnText;
            MiddleColumnText.Text = cm.MiddleColumnText;
            RightColumnText.Text = cm.RightColumnText;
            SupportEmail.Text = cm.SupportEmail;
            UserAgreementText.Text = cm.TermsOfConditions;
            tbSMTP.Text = cm.SMTP;
            HowToText.Text = cm.HowTo;
            autoReply.Text = cm.AutoReply;
            ReplyEmail.Text = cm.ReplyEmail;
        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        // Get content resolver
        IContentManager cm = new ContentManager();
         
        // Save the values
        cm.LeftColumnText = LeftColumnText.Text;
        cm.MiddleColumnText = MiddleColumnText.Text;
        cm.RightColumnText = RightColumnText.Text;

        // Prepare the fields with current data 
        LeftColumnText.Text = cm.LeftColumnText;
        MiddleColumnText.Text = cm.MiddleColumnText;
        RightColumnText.Text = cm.RightColumnText;
        // Show the message
        lNotifySaved.Visible = true;
        cm.HowTo = HowToText.Text;
        cm.TermsOfConditions = UserAgreementText.Text;
        cm.SupportEmail = SupportEmail.Text;
        cm.SMTP = tbSMTP.Text;
        cm.AutoReply = autoReply.Text;
        cm.ReplyEmail = ReplyEmail.Text;
        Response.Redirect("./Content.aspx");

       
    }
}
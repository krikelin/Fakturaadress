using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AddData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void Unnamed1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Server.Transfer("~/Saved.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        FormView formView = (FormView)((ContentPlaceHolder)Master.FindControl("MainContent")).FindControl("AddFormView");
        FileUpload c = (FileUpload)formView.FindControl("Attachment"); 
       
        if (c.HasFile)
        {
            var outputPath = Server.MapPath("") + "\\files";
            c.PostedFile.SaveAs(outputPath + "\\" + c.FileName);
        }
    }
}
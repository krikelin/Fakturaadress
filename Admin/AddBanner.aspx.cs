using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class Admin_AddBanner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Form.Attributes.Add("enctype", "multipart/form-data"); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void Button1_Command(object sender, CommandEventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            return;
           }

        int imgWidth = new ContentManager().BannerWidth;
        int imgHeight = new ContentManager().BannerHeight;

        int impressions = 0; // Impressions
        impressions = int.Parse(tbFrequence.Text); // Create the impressions
        int Index = 0;
        string Namn = tbName.Text;
        Namn = Namn.Replace("'", "");
        

        string Beskrivning = tbText.Text;
        Beskrivning = Beskrivning.Replace("'", "");
        string AltText = tbAltText.Text;
        AltText = AltText.Replace("'", "");
        string Url = tbLink.Text;
        string Keywords = tbKeywords.Text;
        DateTime _StartDate = StartTime.SelectedDate;
        DateTime _EndDate = EndTime.SelectedDate;

        System.Web.HttpPostedFile a = FileUpload1.PostedFile;
        StreamReader f = new StreamReader(a.InputStream);
        Byte[] Bytes = new Byte[f.BaseStream.Length];
        a.InputStream.Read(Bytes, 0, Bytes.Length);
        
        /*
         * If advertisement directory does not exists,
         * create it
         * */
       
        String targetDirectory = Server.MapPath("..\\ads\\");
        String fileName = targetDirectory + FileUpload1.FileName;

         if (!Directory.Exists(targetDirectory))
        {
            Directory.CreateDirectory(targetDirectory);
        }
       
         FileStream Writer = new FileStream(fileName, FileMode.Create);
         Writer.Write(Bytes, 0, Bytes.Length);
         Writer.Close();
         Bitmap img = (Bitmap)Bitmap.FromFile(fileName);

         // If the image's ratio is wrong, do not continue
         if (!(img.Width == imgWidth && img.Height == imgHeight))
         {
             // Raise the image validator error
             imageValidator.IsValid = false;
             imageValidator.Text = "Bilden måste vara exakt "+imgWidth.ToString()+" pixlar bred x "+imgHeight.ToString()+" pixlar hög";

             // invalidate the request
             return;
         }
      
        
        SqlConnection Conn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
        Conn.Open();
        if (Index == 0)
        {

            SqlCommand Query = new System.Data.SqlClient.SqlCommand(@"INSERT INTO ads(startDate,endDate,ImageUrl,NavigateUrl,AlternateText,Keywords,Impressions,Width,Height) VALUES ('" + _StartDate.ToString("yyyy'-'MM'-'dd' 'HH':'mm':'ss") + "','" + _EndDate.ToString("yyyy'-'MM'-'dd' 'HH':'mm':'ss") + "','ads/" + FileUpload1.FileName + "','" + Url + "','" + AltText + "','" + Keywords + "'," + impressions.ToString() + ","+imgWidth+","+imgHeight+")", Conn);
            Query.ExecuteNonQuery();
            var id = new SqlCommand("SELECT @@IDENTITY", Conn).ExecuteScalar();
            Query = new SqlCommand(@"UPDATE ads SET NavigateUrl = 'ads_gateway.aspx?id=" + id + "' WHERE id = " + id);

        }
        else
        {

            SqlCommand Query = new System.Data.SqlClient.SqlCommand("UPDATE ads SET startDate='" + _StartDate.ToString("yyyy'-'MM'-'dd' 'HH':'mm':'ss") + "',endDate='" + _EndDate.ToString("yyyy'-'MM'-'dd' 'HH':'mm':'ss") + "',keywords='" + Keywords + "',AlternateText='" + AltText + "' WHERE ads.ID=" + Index + "");
            Query.ExecuteNonQuery();


            Conn.Close();



        }
        Response.Redirect("banners.aspx");
    }
    protected void tbText_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        // Check if the image file has the correct dimensions
        FileUpload upload = FileUpload1;
        String targetDirectory = Server.MapPath("..\\ads\\");
        String fileName = targetDirectory + FileUpload1.FileName;
       
        // If the image is in wrong format, deny the request 
        if(upload.PostedFile.ContentType != "image/jpeg"){
            imageValidator.Text = "Bilden är inte en jpeg fil";
            args.IsValid = false;
            return;
        }
      
            // Invalidate the request since the bitmap was in wrong ratio
          
        
    }
}
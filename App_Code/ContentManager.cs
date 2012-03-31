using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.IO;

/// <summary>
/// Summary description for ContentManager
/// </summary>
public class ContentManager : IContentManager
{
    
    /// <summary>
    /// Gets data from file
    /// </summary>
    /// <param name="fileName"></param>
    /// <returns></returns>
    private string GetFromFile(String fileName,string defaultValue)
    {
        fileName = HttpContext.Current.Server.MapPath("~/App_Data/"+fileName); 
        String result = "";
        if (File.Exists( fileName))
        {
            using (StreamReader SR = new StreamReader(fileName))
            {
                result = SR.ReadToEnd();
                SR.Close();
            }


            return result;
        }
        else
        {
            return defaultValue;
        }
        
    }

    /// <summary>
    /// Write to file
    /// </summary>
    /// <param name="fileName"></param>
    /// <param name="content"></param>
    private void WriteFile(String fileName, String content)
    {
        fileName = HttpContext.Current.Server.MapPath("~/App_Data/" + fileName); 
       
        String result = "";
      
        using (StreamWriter SR = new StreamWriter(fileName))
        {
            SR.Write(content); // write to file
            SR.Close(); // Close the stream
               
        }


          
        
    }
    public int BannerWidth
    {
        get
        {
            try
            {
                return int.Parse(ConfigurationManager.AppSettings["bannerWidth"]);
            }
            catch (Exception e)
            {
                return 800;
            }
        }
        set
        {
            ConfigurationManager.AppSettings["bannerWidth"] = (value).ToString();
        }
    }
    public int BannerHeight{
        get{
            try
            {
                return int.Parse(ConfigurationManager.AppSettings["bannerHeight"]);
            }
            catch (Exception e)
            {
                return 224;
            }
        }
        set{
            ConfigurationManager.AppSettings["bannerHeight"] = (value).ToString();
        }
    }
    public string TermsOfConditions
    {
        get
        {
            return GetFromFile("TermsOfConditions.htm","");
        }
        set
        {
            WriteFile("TermsOfConditions.htm", value);
        }
    }

    public string LeftColumnText
    {
        get
        {
            return GetFromFile("LeftColumn.htm", "");
        }
        set
        {
            WriteFile("LeftColumn.htm", value);
        }
    }

    public string MiddleColumnText
    {
        get
        {
            return GetFromFile("MiddleColumn.htm", "");
        }
        set
        {
             WriteFile("MiddleColumn.htm", value);
        }
    }

    public string RightColumnText
    {
        get
        {
            return GetFromFile("RightColumn.htm", "");
        }
        set
        {
            WriteFile("RightColumn.htm", value);
        }
    }
    
    public String AutoReply
    {
        get
        {
            try
            {
                return ConfigurationManager.AppSettings["AutoReply"];
            }
            catch
            {
                return "";
            }
        }
        set
        {
            ConfigurationManager.AppSettings["AutoReply"] = value;
        }
    }
    public String HowTo
    {
        
        get
        {
            return GetFromFile("smtp.htm", "");
        }
        set
        {
            WriteFile("smtp.htm", value);
        }
    }
    public string SMTP
    {
        get
        {
            try
            {
                return ConfigurationManager.AppSettings["SMTP"];
            }
            catch (KeyNotFoundException e)
            {
                return "drsounds@gmail.com";
            }
        }
        set
        {
            ConfigurationManager.AppSettings["SMTP"] = value;
        }
    }
    public string SupportEmail
    {
        get
        {
            try
            {
                return ConfigurationManager.AppSettings["SupportEmail"];
            }
            catch (KeyNotFoundException e)
            {
                return "";
            }
        }
        set
        {
            ConfigurationManager.AppSettings["SupportEmail"] = value;
        }
    }


    public System.Data.SqlClient.SqlConnection CreateConnection()
    {
        return null;
    }

    public string ConnectionString
    {
        get
        {
            return ConfigurationManager.AppSettings["ConnectionString"];
        }
        set
        {
            ConfigurationManager.AppSettings["ConnectionString"] = value;
        }
    }


    public string ReplyEmail
    {
        get
        {
            try
            {
                return ConfigurationManager.AppSettings["ReplyEmail"];
            }
            catch (KeyNotFoundException e)
            {
                return "drsounds@gmail.com";
            }
        }
        set
        {
            ConfigurationManager.AppSettings["ReplyEmail"] = value;
        }
    }
}
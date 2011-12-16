using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Default banner manager
/// </summary>
public class BannerManager : IBannerManager
{

    public int addBanner(DateTime startDate, DateTime endDate, string internalName, System.Drawing.Image picture, Uri link)
    {
        return -1;
    }

    public void removeBanner(int id)
    {
       
    }
}
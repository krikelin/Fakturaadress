using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Drawing2D;
/// <summary>
/// Manages banners for Fakturaadress
/// </summary>
public interface IBannerManager
{
    /// <summary>
    /// Adds an banner to the system
    /// </summary>
    /// <param name="startDate">Start date of the banner</param>
    /// <param name="endDate">End date of bannre</param>
    /// <param name="internalName">Internal name of banner</param>
    /// <param name="picture">Picture of banner</param>
    /// <param name="link">Link</param>
    /// <returns>The ID of the inserted banner</returns>
    int addBanner(DateTime startDate, DateTime endDate, string internalName, Image picture, Uri link);
    /// <summary>
    /// Removes the banner with the specified id
    /// </summary>
    /// <param name="id">The id of the banner to remove</param>
    void removeBanner(int id);


}
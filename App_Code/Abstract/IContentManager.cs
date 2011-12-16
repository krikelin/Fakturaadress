using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Content manager interface for fakturaadress.se, to be able to 
/// adapt different storage viewpoints
/// </summary>
public interface IContentManager
{
    /// <summary>
    /// Content text for Terms of conditions
    /// </summary>
    String TermsOfConditions { get; set; }

    /// <summary>
    /// Content text for the left column field
    /// </summary>
    String LeftColumnText { get; set; }

    /// <summary>
    /// Content text for the middle column field
    /// </summary>
     String MiddleColumnText { get; set; }

    /// <summary>
    /// Content text for the right5 column field
    /// </summary>
    String RightColumnText { get; set; }

     String SupportEmail { get; set; }
    /// <summary>
    /// Creates SQL connection
    /// </summary>
    /// <returns></returns>
     SqlConnection CreateConnection();

    /// <summary>
    /// Connection string for the database
    /// </summary>
     String ConnectionString { get; set; }
}
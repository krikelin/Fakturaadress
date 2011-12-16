using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class ads_gateway : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BannerManager bm = new BannerManager();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand command = new SqlCommand("SELECT * FROM ads WHERE id=" + Request.QueryString["id"], conn);
        SqlDataReader sqr = command.ExecuteReader();
        if (sqr.HasRows)
        {
            sqr.Read();
             String redirect_to = (String)sqr["target_url"];
            SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn2.Open();
            // Increase the click count
            SqlCommand change = new SqlCommand("UPDATE ads SET clicks = clicks + 1 WHERE id=" + ((sqr["id"].ToString()).ToString()), conn2);
            change.ExecuteNonQuery();
            Response.Redirect(redirect_to);

        }

    }
}
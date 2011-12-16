using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /***
        * Make sure the user is in role of administrator, otherwise throw out the user
        * */
        if (!Page.User.IsInRole("admin"))
        {
            Response.Redirect("../Account/Login.aspx?RedirectUrl=" + Page.ResolveClientUrl(""));
            //Server.Transfer("NotAuthorized.aspx");
        }
    }
}

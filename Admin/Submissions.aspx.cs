using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Submissions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "Accept":
                int id = Convert.ToInt32(e.CommandArgument);
                
                SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand command = new SqlCommand("DELETE FROM address WHERE id = " + id, conn);
                command.ExecuteNonQuery();

                // Send out an message


                break;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Logs requests to the server
/// </summary>
public class Logger 
{
    private Fakturaadress d = new Fakturaadress();   
    private SqlConnection conn;
    /// <summary>
    /// Creates a new connection
    /// </summary>
    private SqlConnection CreateConnection()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        return conn;
    }
	public Logger()
	{
       // Create new SQL connection
        

	}
    public void log(HttpRequest request)
    {
   
       
        using (conn = CreateConnection())
        {
            System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand("INSERT INTO log (page,get,post,header,ip,type) VALUES ('" + request.Url.AbsolutePath + "','" + d.GetHeader(request.QueryString) + "','" + d.GetHeader(request.Form) + "','" + d.GetHeader(request.Headers) + "','" + request.UserHostAddress + "',1)", conn);

            command.Connection.Open(); // Open the connection
            command.ExecuteNonQuery(); // Execute non query
      
        }
    }  
}
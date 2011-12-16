using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections.Specialized;

/// <summary>
/// Summary description for Fakturaadress
/// </summary>
public class Fakturaadress
{
	public Fakturaadress()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   public String GetHeader(NameValueCollection Name){
       String D = "";
       for(int i = 0; i <  Name.Count - 1; i++){

            D = D + Name.Keys[i] + "=" + Name.GetValues(i)[0];

       }
       return D.Replace("'", "\"");
   }
}
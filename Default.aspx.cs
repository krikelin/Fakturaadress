using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using com.invoicecompany.id;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        // Provide acess to the default content manager
        IContentManager icm = new ContentManager();

        Label leftColumn = (Label)FindControl("LeftColumn");
        /**
         * Fill the columns with text 
         * */
        LeftColumn.Text = icm.LeftColumnText;
        MiddleColumn.Text = icm.MiddleColumnText;
        RightColumn.Text = icm.RightColumnText;


        // Log the request
        Logger l = new Logger();
        l.log(Request);


        /**
         * If querystring q is active, find company
         * */
        string query = "";
        try
        {
            query = Request.QueryString["q"];
        }
        catch
        {
        }
        MainPanel.Visible = true;
        GenericInfo.Visible = false;
        Result1.Visible = false;
        if (!String.IsNullOrEmpty(query))
        {
            Result1.Visible = true;
            MainPanel.Visible = false;
            GenericInfo.Visible = true;

            // Get the company
            /**
             * If cache already contains the query, resolve it
             * to spare energy.
             * */
            Company result = null;
          
                if (Cache.Get(query) != null)
                {

                    result = (Company)Cache.Get(query);
                }
                else // Otherwise invoke the web service
                {
                    com.invoicecompany.id.FAIDService idservice = new com.invoicecompany.id.FAIDService(); 
                    Company[] c = idservice.IdentifyCompanyWithoutOrgNO("Alex999", "Mp62cU", "", query, "", "", "", "");
                    if (c.Length < 1)
                    {
                        Server.Transfer("~/NoMatch.aspx");
                        return;
                    }
                    result = c[0];
                    Cache.Add(query, result, null, System.Web.Caching.Cache.NoAbsoluteExpiration, new TimeSpan(2, 0, 0, 0, 0), System.Web.Caching.CacheItemPriority.Default, null);

                }

            
            // Display the result
            Company _Company = result;
            // Lägg till text till filerna
            OrgNummer.Text = _Company.IdentityCode;
            OrgName.Text = _Company.Name;
            ZipCode.Text = _Company.ZipCode;
            Town.Text = _Company.Town;

            OrgAdress.Text = _Company.Address;
            InvoiceCity.Text = _Company.InvoiceTown;
            InvoiceMailAdress.Text = _Company.InvoiceAddress;
            InvoiceZip.Text = _Company.InvoiceZipCode;
            Town.Text = _Company.Town;
            NeedReference.Visible = (String.IsNullOrEmpty(_Company.InvoiceReference));


            RequirementCity.Text = _Company.ReminderTown;
            RequirementMailAdress.Text = _Company.ReminderAddress;
            RequirementName.Text = _Company.Name;

            RequirementReference.Text = _Company.InvoiceReference;
            RequirementReference.Visible = !String.IsNullOrEmpty(_Company.InvoiceReference);
            GenericInfo.Visible = true;

            
        }

    }
}

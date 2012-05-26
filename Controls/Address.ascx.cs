using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Address : System.Web.UI.UserControl
{
    public Address()
    {

    }
    /// <summary>
    /// Name
    /// </summary>
    public String Name
    {
        get
        {
            return this.tbName.Text;
        }
    }
    /// <summary>
    /// Address
    /// </summary>
    public String Adress
    {
        get
        {
            return this.tbAddress.Text;
        }
    }
    /// <summary>
    /// Postal number
    /// </summary>
    public String Postal
    {
        get
        {
            return this.tbPostal.Text;
        }
    }
    /// <summary>
    /// Town
    /// </summary>
    public String Town
    {
        get
        {
            return this.tbTown.Text;
        }
    }
    /// <summary>
    /// Pointer to uploaded document for advice on reference
    /// </summary>
    public FileUpload Upload
    {
        get
        {
            return fuReference;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cbSpecialReferences_CheckedChanged(object sender, EventArgs e)
    {

    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace pandaform.API
{
    /// <summary>
    /// Summary description for photo
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class photo : System.Web.Services.WebService
    {
        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;

        [WebMethod]
        public void photosubmit(string signature, string picture)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into photo(signature,picture) values('" + signature + "','" + picture + "','" + "')");
        }
    }
}

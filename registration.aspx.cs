using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace pandaform
{
    public partial class registration : System.Web.UI.Page
    {
        API.registration registrationdata = new API.registration();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
               
                dt = registrationdata.registrationsearch("%", "%");

            }
        }
        string photopath = "";
        string signaturepath = "";
        protected void sameaddress_CheckedChanged(object sender, EventArgs e)
        {
            
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            //try
            //{
            
        }
    }
}
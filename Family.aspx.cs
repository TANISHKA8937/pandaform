using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pandaform
{
    public partial class Family : System.Web.UI.Page
    {
        DataTable dt;
        API.registration api = new API.registration();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    dt = api.familydata(Request.QueryString["Keys"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        grddata.DataSource = dt;
                        grddata.DataBind();
                    }
                }
            } catch (Exception ex)
            {
                Response.Redirect("show.aspx");
            }
        }
    }
}
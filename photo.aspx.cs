using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pandaform
{
    public partial class photo : System.Web.UI.Page
    {
        API.registration photodata = new API.registration();
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {                  
                    dt = photodata.photosearch(Request.QueryString["Keys"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        isign.ImageUrl = dt.Rows[0]["signature"].ToString();
                        iphoto.ImageUrl = dt.Rows[0]["photo"].ToString();
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Redirect("registration.aspx");
            }
        }
        string picturepath = "";
        string signaturepath = "";

        protected void submit_Click(object sender, EventArgs e)
        {
            if (picture.PostedFile.ContentLength > 1)
            {
                picture.SaveAs(Server.MapPath("~/photopage/" + ".jpg"));
                picturepath = "~/photopage/" + ".jpg";
            }
            if (signature.PostedFile.ContentLength > 1)
            {
                signature.SaveAs(Server.MapPath("~/signature/" + ".jpg"));
                signaturepath = "~/signature/" + ".jpg";
                photodata.photosubmit(signaturepath.ToString(), picturepath.ToString());
                // Response.Write("Save Successfully !!!");
                Response.Write("<script>alert('Data Save Successfully!!!');</script>");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Successfully !!!', 'success').then((value) => {window.location = 'show.aspx'})", true);
            }

        }
    }
}
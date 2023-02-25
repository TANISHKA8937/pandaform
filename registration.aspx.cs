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
                date.Text = DateTime.Now.ToString("yyyy-MM-dd");
                dob.Text = DateTime.Now.ToString("yyyy-MM-dd");
                dt = registrationdata.registrationsearch("%", "%");
                if(Request.QueryString["Keys"].ToString()!="new")
                {
                    //Search Data
                }

            }
        }
        string photopath = "";
        string signaturepath = "";
        protected void sameaddress_CheckedChanged(object sender, EventArgs e)
        {
            if (sameaddress.Checked == true)
            {
                vdesh.Text = gdesh.Text;
                vstate.Text = gstate.Text;
                vpincode.Text = gpincode.Text;
                vvillagename.Text = gvillagename.Text;
                vhousenum.Text = ghousenum.Text;
                vtahasil.Text = gtahasil.Text;
                vthana.Text = gthana.Text;
                vjila.Text = gjila.Text;
                vshahar.Text = gshahar.Text;

            }
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["Keys"].ToString() != "new")
            {
                //Search Data
            }
            else
            {
                dt = registrationdata.autono();
                fid.Value = dt.Rows[0][0].ToString();
            }
            //try
            //{
            if (photo.PostedFile.ContentLength > 1)
            {
                photo.SaveAs(Server.MapPath("~/photo/" + name.Text + ".jpg"));
                photopath = "~/photo/" + name.Text + ".jpg";
            }
            if (signature.PostedFile.ContentLength > 1)
            {
                signature.SaveAs(Server.MapPath("~/signature/" + name.Text + ".jpg"));
                signaturepath = "~/signature/" + name.Text + ".jpg";
            }
            registrationdata.registrationsubmit(fid.Value,jatiname.Text, vahinum.Text, vahiname.Text, pageno.Text,year.Text, name.Text, dob.Text, gender.SelectedValue, adharnum.Text, pannum.Text, pname.Text, sasurname.Text, childrenname.Text, mobilenum.Text, phonenum.Text, email.Text, pad.Text, kaam.Text, ghousenum.Text, gvillagename.Text, gtahasil.Text, gthana.Text, gjila.Text, gshahar.Text, gstate.Text, gdesh.Text, gpincode.Text, vhousenum.Text, vvillagename.Text, vtahasil.Text, vthana.Text, vjila.Text, vshahar.Text, vstate.Text, vdesh.Text, vpincode.Text, photopath.ToString(), signaturepath.ToString(), remark.Text);
            registrationdata.autoplus();
            // Response.Write("Save Successfully !!!");
            Response.Write("<script>alert('Data Save Successfully!!!');</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Successfully !!!', 'success').then((value) => {window.location = 'Registration.aspx?Keys=new'})", true);
            //}
            //catch (Exception ex)
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('','" + ex.Message + "', 'error')", true);
            //}
        }
    }
}

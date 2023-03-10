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
            try
            {
                if (!IsPostBack)
                {
                    date.Text = DateTime.Now.ToString("yyyy-MM-dd");
                    dob.Text = DateTime.Now.ToString("yyyy-MM-dd");
                
                    if (Request.QueryString["Keys"].ToString() != "new")
                    {
                        dt = registrationdata.registrationsearch(Request.QueryString["Keys"].ToString(), "%");
                        if (dt.Rows.Count > 0)
                        {
                            sn.Value = Request.QueryString["Keys"].ToString();
                            name.Text = dt.Rows[0]["name"].ToString();
                            jatiname.Text = dt.Rows[0]["jatiname"].ToString();
                            vahinum.Text = dt.Rows[0]["vahinum"].ToString();
                            vahiname.Text = dt.Rows[0]["vahiname"].ToString();
                            pageno.Text = dt.Rows[0]["pageno"].ToString();
                            year.Text = dt.Rows[0]["year"].ToString();
                            dob.Text = Convert.ToDateTime(dt.Rows[0]["dob"]).ToString("yyyy-MM-dd");
                            gender.Text = dt.Rows[0]["gender"].ToString();
                            adharnum.Text = dt.Rows[0]["adharnum"].ToString();
                            pannum.Text = dt.Rows[0]["pannum"].ToString();
                            pname.Text = dt.Rows[0]["pname"].ToString();
                            sasurname.Text = dt.Rows[0]["sasurname"].ToString();
                            childrenname.Text = dt.Rows[0]["childrenname"].ToString();
                            mobilenum.Text = dt.Rows[0]["mobilenum"].ToString();
                            phonenum.Text = dt.Rows[0]["phonenum"].ToString();
                            email.Text = dt.Rows[0]["email"].ToString();
                            pad.Text = dt.Rows[0]["pad"].ToString();
                            kaam.Text = dt.Rows[0]["kaam"].ToString();
                            ghousenum.Text = dt.Rows[0]["ghousenum"].ToString();
                            gvillagename.Text = dt.Rows[0]["gvillagename"].ToString();
                            gtahasil.Text = dt.Rows[0]["gtahasil"].ToString();
                            gjila.Text = dt.Rows[0]["gjila"].ToString();
                            gshahar.Text = dt.Rows[0]["gshahar"].ToString();
                            gthana.Text = dt.Rows[0]["gthana"].ToString();
                            gstate.Text = dt.Rows[0]["gstate"].ToString();
                            gdesh.Text = dt.Rows[0]["gdesh"].ToString();
                            vhousenum.Text = dt.Rows[0]["vhousenum"].ToString();
                            gpincode.Text = dt.Rows[0]["gpincode"].ToString();
                            vvillagename.Text = dt.Rows[0]["vvillagename"].ToString();
                            vtahasil.Text = dt.Rows[0]["vtahasil"].ToString();
                            vthana.Text = dt.Rows[0]["vthana"].ToString();
                            vjila.Text = dt.Rows[0]["vjila"].ToString();
                            vshahar.Text = dt.Rows[0]["vshahar"].ToString();
                            vpincode.Text = dt.Rows[0]["vpincode"].ToString();
                            vstate.Text = dt.Rows[0]["vstate"].ToString();
                            vdesh.Text = dt.Rows[0]["vdesh"].ToString();
                            remark.Text = dt.Rows[0]["remark"].ToString();

                        }
                    }
                    else if (Request.QueryString["Keys"].ToString() == "family")
                    {
                        submit.Visible = false;
                        sn.Value = Session["fid"].ToString();
                        addfamily.Visible = true;
                    }
                    else
                    {
                    }
                }
        }
            catch (Exception ex)
            {
                Response.Redirect("registration.aspx?Keys=new");
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
            try
            {
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
            if (sn.Value != "")
            {
                registrationdata.registrationupdate(sn.Value, fid.Value, jatiname.Text, vahinum.Text, vahiname.Text, pageno.Text, year.Text, name.Text, dob.Text, gender.SelectedValue, adharnum.Text, pannum.Text, pname.Text, sasurname.Text, childrenname.Text, mobilenum.Text, phonenum.Text, email.Text, pad.Text, kaam.Text, ghousenum.Text, gvillagename.Text, gtahasil.Text, gthana.Text, gjila.Text, gshahar.Text, gstate.Text, gdesh.Text, gpincode.Text, vhousenum.Text, vvillagename.Text, vtahasil.Text, vthana.Text, vjila.Text, vshahar.Text, vstate.Text, vdesh.Text, vpincode.Text, photopath.ToString(), signaturepath.ToString(), remark.Text);
            }
            else
            {
                registrationdata.registrationsubmit(fid.Value, jatiname.Text, vahinum.Text, vahiname.Text, pageno.Text, year.Text, name.Text, dob.Text, gender.SelectedValue, adharnum.Text, pannum.Text, pname.Text, sasurname.Text, childrenname.Text, mobilenum.Text, phonenum.Text, email.Text, pad.Text, kaam.Text, ghousenum.Text, gvillagename.Text, gtahasil.Text, gthana.Text, gjila.Text, gshahar.Text, gstate.Text, gdesh.Text, gpincode.Text, vhousenum.Text, vvillagename.Text, vtahasil.Text, vthana.Text, vjila.Text, vshahar.Text, vstate.Text, vdesh.Text, vpincode.Text, photopath.ToString(), signaturepath.ToString(), remark.Text);
                registrationdata.autoplus();
            }
            // Response.Write("Save Successfully !!!");
            Response.Write("<script>alert('Data Save Successfully!!!');</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Successfully !!!', 'success').then((value) => {window.location = 'registration.aspx?Keys=new'})", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('','" + ex.Message + "', 'error')", true);
            }
        }

        protected void addfamily_Click(object sender, EventArgs e)
        {

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
            registrationdata.registrationsubmit(sn.Value, jatiname.Text, vahinum.Text, vahiname.Text, pageno.Text, year.Text, name.Text, dob.Text, gender.SelectedValue, adharnum.Text, pannum.Text, pname.Text, sasurname.Text, childrenname.Text, mobilenum.Text, phonenum.Text, email.Text, pad.Text, kaam.Text, ghousenum.Text, gvillagename.Text, gtahasil.Text, gthana.Text, gjila.Text, gshahar.Text, gstate.Text, gdesh.Text, gpincode.Text, vhousenum.Text, vvillagename.Text, vtahasil.Text, vthana.Text, vjila.Text, vshahar.Text, vstate.Text, vdesh.Text, vpincode.Text, photopath.ToString(), signaturepath.ToString(), remark.Text);
            registrationdata.autoplus();
            Response.Write("<script>alert('Data Save Successfully!!!');</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Successfully !!!', 'success').then((value) => {window.location = 'registration.aspx?Keys=new'})", true);

        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pandaform
{
    public partial class show : System.Web.UI.Page
    {
        API.registration registrationdata = new API.registration();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                dt = registrationdata.registrationsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
                name.DataSource = dt.DefaultView.ToTable(true, "name");
                name.DataTextField = "name";
                name.DataValueField = "name";
                name.DataBind();
                name.Items.Insert(0, new ListItem("---Select---", "%"));
                //jati name
                dt = registrationdata.registrationsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
                jatiname.DataSource = dt.DefaultView.ToTable(true, "jatiname");
                jatiname.DataTextField = "jatiname";
                jatiname.DataValueField = "jatiname";
                jatiname.DataBind();
                jatiname.Items.Insert(0, new ListItem("---Select---", "%"));
                //vahi name
                dt = registrationdata.registrationsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
                vahiname.DataSource = dt.DefaultView.ToTable(true, "vahiname");
                vahiname.DataTextField = "vahiname";
                vahiname.DataValueField = "vahiname";
                vahiname.DataBind();
                vahiname.Items.Insert(0, new ListItem("---Select---", "%"));

            }
        }

        protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "btnedt")
                {
                    Response.Redirect("registration.aspx?Keys="+e.CommandArgument.ToString());
                }

                else
                {
                    registrationdata.registrationdelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'show.aspx'})", true);

                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('','" + ex.Message + "', 'error')", true);
            }
        }
        protected void grddata_PreRender(object sender, EventArgs e)
        {
            if (grddata.Rows.Count > 0)
            {
                grddata.UseAccessibleHeader = true;
                grddata.HeaderRow.TableSection = TableRowSection.TableHeader;
                grddata.FooterRow.TableSection = TableRowSection.TableFooter;
            }

        }
        protected void search_Click(object sender, EventArgs e)
        {
            dt = registrationdata.registrationsearch2(name.SelectedValue,jatiname.SelectedValue,vahiname.SelectedValue);
            grddata.DataSource = dt;
            grddata.DataBind();

        }
    }
    
}

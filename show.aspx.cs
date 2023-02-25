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
                datefrom.Text = DateTime.Now.ToString("yyyy-MM-dd");
                dateto.Text = DateTime.Now.ToString("yyyy-MM-dd");
                dt = registrationdata.registrationsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
            }
        }

        protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "btnedt")
                {
                    dt = registrationdata.registrationsearch(e.CommandArgument.ToString(), "%");

                }

                else
                {
                    registrationdata.registrationdelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'showdata.aspx'})", true);

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
            dt = registrationdata.registrationsearch2(jatiname.SelectedValue, datefrom.Text, dateto.Text);
            grddata.DataSource = dt;
            grddata.DataBind();

        }
    }
    
}

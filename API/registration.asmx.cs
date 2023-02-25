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
    /// Summary description for registration
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class registration : System.Web.Services.WebService
    {
        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;
        [WebMethod]
        public DataTable registrationsearch(string sn, string jatiname)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from registration where sn like'" + sn + "' and JaatiName like'" + jatiname + "'");
            }
        }
        public DataTable registrationsearch2(string jatiname, string datefrom, string dateto)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from registration where jatiname like'" + jatiname + "' and date between '" + datefrom + "' and '" + dateto + "'");

            }
        }
        [WebMethod]
        public void registrationsubmit(string jatiname, int vahinum, string vahiname, int pageno, int year, string name, string dob, string gender, string adharnum, string pannum, string pname, string sasurname, string childrenname, string mobilenum, string phonenum, string email, string pad, string kaam, string ghousenum, string gvillagename, string gtahasil, string gthana, string gjila, string gshahar, string gstate, string gdesh, string gpincode, string vhousenum, string vvillagename, string vtahasil, string vthana, string vjila, string vshahar, string vstate, string vdesh, string vpincode, string signature, string photo, string remark, string date)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into registration(jatiname,vahinum,vahiname,pageno,year,name,dob,gender,adharnum,pannum,pname,sasurname,childrenname,mobilenum,phonenum,email,pad,kaam,ghousenum,gvillagename,gtahasil,gthana,gjila,gshahar,gstate,gdesh,gpincode,vhousenum,vvillagename,vtahasil,vthana,vjila,vshahar,vstate,vdesh,vpincode,signature,photo,remark,date) values('" + pcase.ToTitleCase(jatiname) + "','" + vahinum + "','" + vahiname + "','" + pageno + "','" + year + "','" + name + "','" + dob + "','" + gender + "','" + adharnum + "','" + pannum + "','" + pname + "','" + sasurname + "','" + childrenname + "','" + mobilenum + "','" + phonenum + "','" + email + "','" + pad + "','" + kaam + "','" + ghousenum + "','" + gvillagename + "','" + gtahasil + "','" + gthana + "','" + gjila + "','" + gshahar + "','" + gstate + "','" + gdesh + "','" + gpincode + "','" + vhousenum + "','" + vvillagename + "','" + vtahasil + "','" + vthana + "','" + vjila + "','" + vshahar + "','" + vstate + "','" + vdesh + "','" + vpincode + "','" + signature + "','" + photo + "','" + remark + "','" + date + "')");
        }
        [WebMethod]
        public void registrationdelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from registration where sn='" + sn + "'");
        }
    }
}

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
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from registration where sn like'" + sn + "' and JatiName like'" + jatiname + "'");
            }
        }
        public DataTable registrationsearch2(string name, string dtfrom, string dtto)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from registration where name like'" + name + "' and date between '" + dtfrom + "' and '" + dtto + "'");
            }
        }
        [WebMethod]
        public DataTable autono()
        {
            return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select (prefix+seprator+RIGHT(padding+CAST(currentno+1 as varchar(6)),6))PERSISTED from autono where scheme='FID' and isauto='Yes'");
        }
        public void autoplus()
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "update autono set currentno=currentno+1 where scheme='FID'"); 
        }
        [WebMethod]
        public void registrationsubmit(string familyid, string jatiname, string vahinum, string vahiname, string pageno, string year, string name, string dob, string gender, string adharnum, string pannum, string pname, string sasurname, string childrenname, string mobilenum, string phonenum, string email, string pad, string kaam, string ghousenum, string gvillagename, string gtahasil, string gthana, string gjila, string gshahar, string gstate, string gdesh, string gpincode, string vhousenum, string vvillagename, string vtahasil, string vthana, string vjila, string vshahar, string vstate, string vdesh, string vpincode, string photo, string signature, string remark)
        {

            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into registration(familyid,jatiname,vahinum,vahiname,pageno,year,name,dob,gender,adharnum,pannum,pname,sasurname,childrenname,mobilenum,phonenum,email,pad,kaam,ghousenum,gvillagename,gtahasil,gthana,gjila,gshahar,gstate,gdesh,gpincode,vhousenum,vvillagename,vtahasil,vthana,vjila,vshahar,vstate,vdesh,vpincode,photo,signature,remark) values(N'" + familyid + "',N'" + jatiname + "',N'" + vahinum + "',N'" + vahiname + "',N'" + pageno + "',N'" + year + "',N'" + name + "','" + dob + "',N'" + gender + "',N'" + adharnum + "',N'" + pannum + "',N'" + pname + "',N'" + sasurname + "',N'" + childrenname + "',N'" + mobilenum + "',N'" + phonenum + "',N'" + email + "',N'" + pad + "',N'" + kaam + "',N'" + ghousenum + "',N'" + gvillagename + "',N'" + gtahasil + "',N'" + gthana + "',N'" + gjila + "',N'" + gshahar + "',N'" + gstate + "',N'" + gdesh + "',N'" + gpincode + "',N'" + vhousenum + "',N'" + vvillagename + "',N'" + vtahasil + "',N'" + vthana + "',N'" + vjila + "',N'" + vshahar + "',N'" + vstate + "',N'" + vdesh + "',N'" + vpincode + "',N'" + photo + "',N'" + signature + "',N'" + remark + "')");

            
        }
        [WebMethod]
        public void registrationdelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from registration where sn='" + sn + "'");
        }
    }
}

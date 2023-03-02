<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="pandaform.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container rounded bg-white shadow bg-white-header">
        <div class="row">
            <div class="col-md-12 text-center pt-2 mt-1 text-danger">
                <h4>
               पंजीकरण फार्म
                    </h4>
               
                <h6>(अपना विवरण भरने के लिए केवल अंग्रेजी (A-Z) का ही उपयोग करे )</h6>
            </div>
            </div>
        <hr>
        <br />
        <div class="row m-1 p-3 ">
           
                <div class="col-md-2 mt-1 text-danger">जाति का नाम :</div>
            <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="	fa fa-users">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="jatiname" runat="server" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                    <asp:HiddenField ID="sn" runat="server" />
                    <asp:HiddenField ID="fid" runat="server" />
                </div>
            </div>
            <div class="col-md-2 mt-1 text-danger">वही. न. :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-user">
                            </i>
                        </div>
                    </div>
 <asp:TextBox ID="vahinum" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">वही. का नाम :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-user">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="vahiname" runat="server" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2 mt-1 text-danger">पेज न. :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-file-powerpoint-o">
                            </i>
                        </div>
                    </div>
<asp:TextBox ID="pageno" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
                  <div class="col-md-2 mt-1 text-danger">संवत / साल :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-calendar">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="year" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
                
           <div class="col-md-12 bg-primary text-black p-1 mt-2 mb-2">
               पत्राचार का विवरण 
           </div>
 <div class="col-md-2 mt-1 text-danger">नाम :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-user">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="name" runat="server" TextMode="SingleLine" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">जन्म तिथि :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-calendar">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="dob" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
</div>
            </div>
              <div class="col-md-2 mt-1 text-danger">लिंग :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-genderless">
                            </i>
                        </div>
                    </div>
                    <asp:DropDownList ID="gender" runat="server" CssClass="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">आधार संख्या :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-vcard-o">
                            </i>
                        </div>
                    </div>
<asp:TextBox ID="adharnum" runat="server" MaxLength="12" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">पैन संख्या :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-drivers-license-o">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="pannum" runat="server"  MaxLength="15"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">पिता /पति का नाम :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-user-circle-o">
                            </i>
                        </div>
                    </div>
<asp:TextBox ID="pname" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">ससुर का नाम :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-user-circle-o">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="sasurname" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">औलाद का नाम :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-child">
                            </i>
                        </div>
                    </div>
 <asp:TextBox ID="childrenname" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">मोबाइल न. :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-phone">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="mobilenum" runat="server" pattern="[6-9]{1}[0-9]{9}" MaxLength="10" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">फ़ोन न. :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-mobile-phone">
                            </i>
                        </div>
                    </div>
 <asp:TextBox ID="phonenum" runat="server" pattern="[6-9]{1}[0-9]{9}"  MaxLength="10"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">ईमेल आईडी :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-envelope">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="email" runat="server" TextMode="Email"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2 mt-1 text-danger">पद :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-sitemap">
                            </i>
                        </div>
                    </div>
 <asp:TextBox ID="pad" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
                        <div class="col-md-2 mt-1 text-danger">काम (आप क्या करते हैं?) :</div>
             <div class="col-md-10 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-industry">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="kaam" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>


             <div class="col-md-12 bg-primary text-black p-1 mt-2 mb-2">
               पत्राचार का पता 
           </div>

            <div class="col-md-12 mt-1 text-danger" style="font-weight:600">गांव का पता :</div>

<div class="col-md-2 mt-1 text-danger">मकान न. :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-dot-circle-o">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="ghousenum" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">मोहल्ला / गांव का नाम :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-street-view">
                            </i>
                        </div>
                    </div>
 <asp:TextBox ID="gvillagename" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">तहसील :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-institution">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="gtahasil" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">थाना :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-map-marker">
                            </i>
                        </div>
                    </div>
  <asp:TextBox ID="gthana" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">जिला :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-map-signs">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="gjila" runat="server"  MaxLength="15"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
<div class="col-md-2 mt-1 text-danger">शहर :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-road">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="gshahar" runat="server"  MaxLength="15" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">राज्य :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="	fa fa-location-arrow">
                            </i>
                        </div>
                    </div>
  <asp:TextBox ID="gstate" runat="server"  MaxLength="15" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">देश :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-map-o">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="gdesh" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">पिनकोड :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-fax">
                            </i>
                        </div>
                    </div>
<asp:TextBox ID="gpincode" MaxLength="6" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <br /><br />
            <div class="col-md-12 mt-1 text-danger">
               &nbsp;&nbsp;&nbsp; <asp:CheckBox ID="sameaddress" runat="server" AutoPostBack="true"  OnCheckedChanged="sameaddress_CheckedChanged"/>&nbsp;&nbsp;दोनों का पता समान है ।
            </div>
            <br /><br />

            <div class="col-md-12 mt-1 text-danger" style="font-weight:600">वर्तमान का पता :</div>

             <div class="col-md-2 mt-1 text-danger">मकान न. :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-dot-circle-o">
                            </i>
                        </div>
                    </div>
<asp:TextBox ID="vhousenum" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">मोहल्ला / गांव का नाम :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-street-view">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="vvillagename" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">तहसील :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-institution">
                            </i>
                        </div>
                    </div>
 <asp:TextBox ID="vtahasil" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">थाना :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-map-marker">
                            </i>
                        </div>
                    </div>
<asp:TextBox ID="vthana" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">जिला :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-map-signs">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="vjila" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">शहर :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-road">
                            </i>
                        </div>
                    </div>
<asp:TextBox ID="vshahar" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">राज्य :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-location-arrow">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="vstate" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="col-md-2 mt-1 text-danger">देश :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-map-o">
                            </i>
                        </div>
                    </div>
 <asp:TextBox ID="vdesh" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2 mt-1 text-danger">पिनकोड :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fa fa-fax">
                            </i>
                        </div>
                    </div>
                    <asp:TextBox ID="vpincode" MaxLength="6" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
            </div>
          <br /><br />
            <hr>
            <br />
            <div class="col-md-2 d-none mt-1 text-danger">फोटो :</div>
             <div class="col-md-4 d-none mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="	fa fa-pencil-square-o">
                            </i>
                        </div>
                    </div>
 <asp:FileUpload ID="photo" runat="server" CssClass="form-control" />
                </div>
            </div>
            <div class="col-md-2 d-none mt-1 text-danger">हस्ताक्षर :</div>
             <div class="col-md-4 d-none mt-1">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="	fa fa-pencil-square-o">
                            </i>
                        </div>
                    </div>
 <asp:FileUpload ID="signature" runat="server" CssClass="form-control" />
                </div>
            </div>
            <div class="col-md-2 mt-1 text-danger">रिमार्क / अन्य जानकारी :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                  
                   <asp:TextBox ID="remark" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
              <div class="col-md-2 mt-1 text-danger">वर्तमान तिथि :</div>
             <div class="col-md-4 mt-1">
                <div class="input-group input-group-sm">
                  
                   <asp:TextBox ID="date" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="col-md-12"></div>
            <br />
            <div class="col-md-3"></div>
 <div class="col-md-3 mt-1 text-center">
             <asp:Button ID="reset" Text="Reset" runat="server" CssClass="btn w-100 p-1 rounded-2 bg-warning"  OnClientClick="this.form.reset();return false;" CausesValidation="false"    />
                   </div>
            <div class="col-md-3 mt-1 text-center">
                  
                <asp:Button ID="submit" Text="Submit" runat="server" CssClass="btn w-100 p-1 rounded-2 bg-warning" OnClick="submit_Click" />
                 <asp:Button ID="addfamily" Text="Submit" Visible="false" runat="server" CssClass="btn w-100 p-1 rounded-2 bg-warning" OnClick="addfamily_Click" />
            </div>

        </div>
       
    </div>
</asp:Content>
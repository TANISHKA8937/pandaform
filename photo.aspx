<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="photo.aspx.cs" Inherits="pandaform.photo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />
    <div class="container rounded bg-white shadow bg-white-header">
        <div class="row">
            <div class="col-md-12 text-center pt-2 mt-1 text-danger">
              <br />
                <h2>
               फोटो लगाए
                    </h2>
            </div>
            </div>
        <hr>
        <br />
             <div class="row m-1 p-3 ">
                     <div class="col-md-2 mt-1 text-danger">हस्ताक्षर :</div>
             <div class="col-md-4 mt-1">
               <asp:FileUpload ID="signature" runat="server" CssClass="form-control" />
                </div>
                 <div class="col-md-2 mt-1 text-danger">फोटो :</div>
             <div class="col-md-4 mt-1">
                    <asp:FileUpload ID="picture" runat="server" CssClass="form-control" />
                </div>
 <br /> <br /><br /> <br />
                 <div class="col-md-3"></div>
                
                 <div class="col-md-3 mt-1 text-center">
             <asp:Button ID="reset" Text="Reset" runat="server" CssClass="btn w-100 p-1 rounded-2 bg-warning"  OnClientClick="this.form.reset();return false;" CausesValidation="false"   />
                   </div>
                   <div class="col-md-3 mt-1 text-center">
                        
                      
            
                <asp:Button ID="submit" Text="Submit" runat="server" CssClass="btn w-100 p-1 rounded-2 bg-warning" />
            </div>
            </div>
  </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="pandaform.show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid mt-1">
       <div class="row m-0 p-2  border table-responsive card-body">
           <div class="row m-0 p-2">
        <div class="col-md-2">
         नाम
          <br />
           <asp:DropDownList id="name" runat="server" CssClass="form-control"></asp:DropDownList>
       </div>
                 <div class="col-md-2">
     तिथि से
          <br />
         <asp:TextBox ID="datefrom" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
       </div>
            <div class="col-md-2">
     तिथि तक
          <br />
         <asp:TextBox ID="dateto" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
  </div>
            <div class="col-md-2">
      
          <br />
         <asp:Button ID="search" runat="server" CssClass="btn btn-primary" Text="Search" OnClick="search_Click" />
       </div></div>

  <div class="row m-0 p-0 border-0  table-responsive card-body">
       
       
<asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" ClientIDMode="Static" OnPreRender="grddata_PreRender" OnRowCommand="grddata_RowCommand" HeaderStyle-BackColor="#003cb3" HeaderStyle-ForeColor="white" runat="server" CssClass="table table-hover table-bordered">
<Columns>
    <asp:BoundField HeaderText="तिथि" DataField="date" DataFormatString="{0:dd/MM/yyyy}"/>
  <asp:BoundField HeaderText="जाति का नाम" DataField="jatiname" />
<asp:BoundField HeaderText="वही. का नाम" DataField="vahiname" />
<asp:BoundField HeaderText="नाम" DataField="name" />
<asp:BoundField HeaderText="पिता /पति का नाम" DataField="pname" />
<asp:BoundField HeaderText="मोबाइल न." DataField="mobilenum" />

                    <asp:TemplateField>
                        <ItemTemplate>
                              <asp:LinkButton ID="btnedt" runat="server" CommandName="btnedt" Text="<i class='fa fa-pencil text-sucess'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                               <asp:LinkButton ID="btndlt" runat="server" OnClientClick="return confirm('Are you sure you want to delete this record?');"  CommandName="btndlt" Text="<i class='fa fa-close text-danger'></i>" CommandArgument='<%# Eval("sn") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
           </div></div>


</asp:Content>

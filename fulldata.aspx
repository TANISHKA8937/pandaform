<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="fulldata.aspx.cs" Inherits="pandaform.fulldata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
   th
   {
        border: 2px solid black;
   }
   td 
   {
        border: 2px solid black;
   }
  tr:nth-child(even) 
  {
  background-color: #D6EEEE;
  }
     
    table 
    {
        border-spacing: 5px;
        border: 2px solid black;
    }
    </style>
    <br /> <br />
      <table style="width:50%">
        <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
        <tr>
            <td>Priya</td>
            <td>Sharma</td>
            <td>24</td>
        </tr>
        <tr>
            <td>Arun</td>
            <td>Singh</td>
            <td>32</td>
        </tr>
        <tr>
            <td>Sam</td>
            <td>Watson</td>
            <td>41</td>
        </tr>
    </table>

</asp:Content>

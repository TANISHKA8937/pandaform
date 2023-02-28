<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Family.aspx.cs" Inherits="pandaform.Family" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Verdana;
            background-color: gray;
        }

        @page {
            size: A4;
            margin: 0mm;
        }

        .lbl {
            opacity: 0.5;
            -webkit-transform: rotate(-45deg);
            -moz-transform: rotate(-45deg);
            transform: rotate(-45deg);
            padding-top: 50%;
            z-index: 0;
            font-size: 30px;
        }

        @media print {
            .page-break {
                display: block;
                page-break-before: always;
            }

            div.tobo {
                margin: 0px !important;
            }

            .OnPriintHide {
                display: none;
            }

            body {
                background-color: white !important;
                font-family: Verdana;
            }
        }

        .myheight {
            height: 20px;
        }
        /*.backgroungimage {
            background-size: 800px 1123px;
            background-image: url('"); background-repeat: no-repeat;
        }*/
        table.MsoTableGrid {
            border: 1.0pt solid black;
            font-size: 11.0pt;
            font-family: Verdana !important;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" width="100%">
            <tr>
                <td>
                    <div align="center">
                        <div>
                            <%--  <div style="width: 30cm; padding: 20px; margin-top: 10px; background: white;">
                                <asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" Width="100%" ClientIDMode="Static" ShowHeader="false" runat="server" CssClass="table table-hover table-bordered">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
      <span style="padding:10px; font-size:20px; font-weight:800"> <%# Container.DataItemIndex + 1 %></span>
                                                <table border style="border-collapse: collapse" width="100%" cellpadding="5">

                                                    <tr>
                                                        <td><b>वही. का नाम</b> </td>
                                                        <td colspan="3"><%# Eval("vahiname") %></td>
                                                        <td><b>वही. न. </td>
                                                        <td><%# Eval("vahinum") %></td>
                                                        <td><b>पेज न. </td>
                                                        <td><%# Eval("pageno") %></td>
                                                        <td><b>संवत / साल </td>
                                                        <td><%# Eval("year") %></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>नाम</b></td>
                                                        <td colspan="3"><%# Eval("name") %></td>
                                                        <td><b>पिता /पति का नाम</td>
                                                        <td colspan="2"><%# Eval("pname") %></td>
                                                        <td><b>ससुर का नाम</td>
                                                        <td colspan="2"><%# Eval("sasurname") %></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>औलाद का नाम</td>
                                                        <td colspan="3"><%# Eval("childrenname") %></td>
                                                        <td><b>जन्म तिथि</td>
                                                        <td colspan="2"><%#Convert.ToDateTime(Eval("dob")).ToString("dd-MM-yyyy") %></td>
                                                        <td><b>आधार संख्या </td>
                                                        <td colspan="2"><%# Eval("adharnum") %></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>पैन संख्या  </td>
                                                        <td colspan="2"><%# Eval("pannum") %></td>
                                                        <td><b>ईमेल आईडी</td>
                                                        <td colspan="4"><%# Eval("email") %></td>
                                                        <td><b>मोबाइल न. </td>
                                                        <td><%# Eval("mobilenum") %></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b>फ़ोन न.</td>
                                                        <td colspan="2"><%# Eval("phonenum") %></td>
                                                        <td><b>लिंग</td>
                                                        <td><%# Eval("gender") %></td>
                                                        <td><b>पद</td>
                                                        <td colspan="2"><%# Eval("pad") %></td>
                                                        <td><b>जाति का नाम </td>
                                                        <td colspan="2"><%# Eval("jatiname") %></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2"><b>काम (आप क्या करते हैं?) </td>
                                                        <td colspan="8"><%# Eval("kaam") %></td>

                                                    </tr>
                                                    <tr>
                                                        <td><strong>गांव का पता :</strong></td>
                                                        <td colspan="10">मकान न.-<%# Eval("ghousenum")%> , मोहल्ला / गांव का नाम -<%#  Eval("gvillagename") %>, थाना -<%# Eval("gthana") %>, तहसील -<%# Eval("gtahasil") %> , जिला -<%# Eval("gjila") %>, शहर-<%# Eval("gshahar") %> , राज्य -<%# Eval("gstate") %> , देश-<%# Eval("gdesh") %> , पिनकोड-<%# Eval("gpincode") %></td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>वर्तमान का पता</strong></td>
                                                        <td colspan="10">मकान न.-<%# Eval("vhousenum")%> , मोहल्ला / गांव का नाम -<%#  Eval("vvillagename") %>, थाना -<%# Eval("vthana") %>, तहसील -<%# Eval("vtahasil") %> , जिला -<%# Eval("vjila") %>, शहर-<%# Eval("vshahar") %> , राज्य -<%# Eval("vstate") %> , देश-<%# Eval("vdesh") %> , पिनकोड-<%# Eval("vpincode") %></td>
                                                    </tr>
                                                    <tr>
                                                    <td><b>रिमार्क / अन्य जानकारी</td>
                                                    <td colspan="9"><%# Eval("remark") %></td>
                                                    </tr>

                                                </table>
                                                <hr />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>--%>
                            <div style="width: 30cm; padding: 20px; margin-top: 10px; background: white;">
                                <asp:GridView ID="grddata" GridLines="None" AutoGenerateColumns="false" Width="100%" ClientIDMode="Static" ShowHeader="false" runat="server" CssClass="table table-hover table-bordered">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <span style="padding: 10px; font-size: 20px; font-weight: 800"><%# Container.DataItemIndex + 1 %></span>
                                                <table border style="border-collapse: collapse" width="100%" cellpadding="5">

                                                    <tr>
                                                        <td style="line-height:1.8"><b>वही. का नाम</b>- <%# Eval("vahiname") %> , <b>वही. न. </b>- <%# Eval("vahinum") %> , <b>पेज न. </b>-<%# Eval("pageno") %>, <b>संवत / साल </b>-<%# Eval("year") %>, <b>जाति का नाम </b>- <%# Eval("jatiname") %><br />
                                                        <b>नाम</b>- <%# Eval("name") %> <b>पिता /पति का नाम -</b> <%# Eval("pname") %> <b>ससुर का नाम -</b><%# Eval("sasurname") %>,<b>औलाद का नाम -</b><%# Eval("childrenname") %>, <b>जन्म तिथि -</b><%#Convert.ToDateTime(Eval("dob")).ToString("dd-MM-yyyy") %>
                                                        , <b>आधार संख्या </b>-<%# Eval("adharnum") %>, <b>पैन संख्या -</b><%# Eval("pannum") %>, <b>ईमेल आईडी</b>- <%# Eval("email") %>, <b>मोबाइल न.</b> -<%# Eval("mobilenum") %>
                                                    , <b>फ़ोन न.</b> -<%# Eval("phonenum") %>, <b>लिंग</b>- <%# Eval("gender") %>, <b>पद</b> - <%# Eval("pad") %>
                                                            <br />
                                                            <b>काम (आप क्या करते हैं?) </b>- <%# Eval("kaam") %><br />
                                                            <strong>गांव का पता :</strong> - 
                                                        मकान न.-<%# Eval("ghousenum")%> , मोहल्ला / गांव का नाम -<%#  Eval("gvillagename") %>, थाना -<%# Eval("gthana") %>, तहसील -<%# Eval("gtahasil") %> , जिला -<%# Eval("gjila") %>, शहर-<%# Eval("gshahar") %> , राज्य -<%# Eval("gstate") %> , देश-<%# Eval("gdesh") %> , पिनकोड-<%# Eval("gpincode") %><br />
                                                            <strong>वर्तमान का पता</strong> -
                                                        मकान न.-<%# Eval("vhousenum")%> , मोहल्ला / गांव का नाम -<%#  Eval("vvillagename") %>, थाना -<%# Eval("vthana") %>, तहसील -<%# Eval("vtahasil") %> , जिला -<%# Eval("vjila") %>, शहर-<%# Eval("vshahar") %> , राज्य -<%# Eval("vstate") %> , देश-<%# Eval("vdesh") %> , पिनकोड-<%# Eval("vpincode") %><br />
                                                            <b>रिमार्क / अन्य जानकारी</b> -<%# Eval("remark") %></td>
                                                    </tr>

                                                </table>
                                                <hr />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

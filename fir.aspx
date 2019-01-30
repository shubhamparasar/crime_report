﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fir.aspx.cs" Inherits="fir" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 13px;
        }
        .auto-style2 {
            width: 125px;
        }
        .auto-style3 {
            text-align: center;
            font-size: xx-large;
            background-color: #FFFFCC;
        }
        .auto-style4 {
            color: #006600;
            text-decoration: blink;
            text-transform: capitalize;
            font-size: xx-large;
        }
        .auto-style5 {
            width: 147px;
            text-align: center;
            font-weight: bold;
            background-color: #996633;
        }
        .auto-style6 {
            width: 145px;
            text-align: center;
            font-weight: bold;
            background-color: #996633;
        }
        .auto-style7 {
            width: 184px;
            text-align: center;
            font-weight: bold;
            background-color: #996633;
        }
        .auto-style10 {
            width: 174px;
            text-align: center;
            font-weight: bold;
            background-color: #996633;
        }
        .auto-style11 {
            width: 159px;
            text-align: center;
            font-weight: bold;
            background-color: #996633;
        }
        .auto-style14 {
            width: 33%;
            height: 49px;
        }
        .auto-style16 {
            color: #FEFFFF;
        }
        .auto-style17 {
            height: 19px;
            text-align: center;
            background-color: #F4DAB3;
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            font-style: italic;
            font-weight: bold;
            text-transform: capitalize;
        }
        .auto-style18
        {
            width: 100%;
            height: 261px;
        }
        .auto-style19
        {
            width: 281px;
            text-align: center;
            font-weight: bold;
            background-color: #D1F2B0;
            height: 65px;
        }
        .auto-style20
        {
            text-align: center;
            font-size: xx-large;
            height: 262px;
            background-color: #EBFCFE;
        }
        .auto-style24 {
            width: 281px;
            text-align: center;
            font-weight: bold;
            background-color: #D1F2B0;
            height: 66px;
        }
        .auto-style25 {
            font-size: medium;
        }
        .auto-style26 {
            width: 308px;
            font-size: medium;
            text-align: right;
        }
        .auto-style27 {
            width: 308px;
            height: 26px;
            text-align: right;
        }
        .auto-style28 {
            height: 26px;
            text-align: left;
        }
        .auto-style29
        {
            width: 308px;
            text-align: right;
        }
        .auto-style30
        {
            width: 308px;
        }
        .auto-style31
        {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/1499705753016.png" Width="121px" />
                </td>
                <td class="auto-style3">
                    <h1 class="auto-style4"><strong>Bureau of crime research and criminal status tracking</strong></h1>
                </td>
            </tr>
        </table>
    
    </div>
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style16" 
                        NavigateUrl="~/home.aspx">Home</asp:HyperLink>
                </td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style16" 
                        NavigateUrl="~/signup.aspx">Register</asp:HyperLink>
                </td>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style16" 
                        NavigateUrl="~/about.aspx">About Us</asp:HyperLink>
                </td>
                <td class="auto-style10">
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style16" 
                        NavigateUrl="~/FAQ.aspx">FAQ</asp:HyperLink>
                </td>
                <td class="auto-style11">
                    <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style16" NavigateUrl="~/stats.aspx">Statistics</asp:HyperLink>
                </td>
            </tr>
        </table>
        <table cellpadding="0" cellspacing="0" class="auto-style18">
            <tr>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/admlogin.aspx">Admin</asp:HyperLink>
                </td>
                <td class="auto-style20" rowspan="6">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style26">&nbsp;</td>
                            <td class="auto-style31">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style29">
                                <asp:Label ID="lbluser" runat="server" CssClass="auto-style25" Text="UserId"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtid" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26">ThanaId</td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtthanaid" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtthanaid" ErrorMessage="missing"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26">ThanaName</td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="missing"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style29">
                                <asp:Label ID="lblDate" runat="server" CssClass="auto-style25" Text="FirDate"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style29">
                                <asp:Label ID="lblreason" runat="server" CssClass="auto-style25" Text="Reason"></asp:Label>
                            </td>
                            <td class="auto-style31">
                                <asp:TextBox ID="txtreason" runat="server" Height="66px" TextMode="MultiLine" Width="162px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtreason" ErrorMessage="missing"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">
                                &nbsp;</td>
                            <td class="auto-style28">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style27">
                                <asp:Label ID="lblfor" runat="server" CssClass="auto-style25" Text="Fir for"></asp:Label>
                            </td>
                            <td class="auto-style28">
                                <asp:TextBox ID="txtfor" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style29">&nbsp;</td>
                            <td class="auto-style31">
                                <asp:Label ID="lblmsg" runat="server" style="font-size: medium">alert!!</asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">&nbsp;</td>
                            <td class="auto-style31">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Submit-Button-Transparent-PNG.png" OnClick="ImageButton1_Click1" Width="110px" />
                            </td>
                        </tr>
                    </table>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/download.jpg" PostBackUrl="~/check.aspx" Width="193px" style="margin-top: 27px" OnClick="ImageButton2_Click" />
                    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/check.aspx">status</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/userLogOutaspx.aspx" style="font-size: x-large">Log out</asp:HyperLink>
                    </p>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/ViewMostWanted.aspx">Most Wanted</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/login.aspx">Lodge an FIR</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/viewMissingPerson.aspx">Missing Person</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/thanasigninmaster.aspx">Thana Sign In</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/gallery.aspx">Gallery</asp:HyperLink>
                </td>
            </tr>
        </table>
        &nbsp;<table cellpadding="0" cellspacing="0" class="auto-style14">
            <tr>
                <td class="auto-style17">
                    helpline numbers<b><font  face="times new roman" color="brown"><marquee
                        style="width: 1344px; margin-left: 0px; height: 19px;">Eyes and Ears:1090 Women:1091 Missing Persons:1094 Traffic:1095 Vigilance:1064 Children:1234 Senior Citizen:4567 Fire And Safety:5678 ambulance:191 trafficking:4567 </marquee></font></b></td>
            </tr>
        </table>
    </form>
</body>
</html>


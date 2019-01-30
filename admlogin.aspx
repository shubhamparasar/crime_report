<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admlogin.aspx.cs" Inherits="admlogin" %>

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
        .auto-style16 {
            color: #FEFFFF;
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
        }
        .auto-style20
        {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style14 {
            width: 33%;
            height: 49px;
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
        .auto-style21 {
        width: 100%;
        height: 283px;
    }
        .auto-style23
        {
            text-align: center;
            font-weight: normal;
            font-size: larger;
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style24
        {
            font-family: "Segoe UI Symbol";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
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
                    <asp:HyperLink ID="FAQ" runat="server" CssClass="auto-style16" 
                        NavigateUrl="~/FAQ.aspx">[FAQ]</asp:HyperLink>
                </td>
                <td class="auto-style11">
                    <asp:HyperLink ID="Statistics" runat="server" CssClass="auto-style16" NavigateUrl="~/stats.aspx">Statistics</asp:HyperLink>
                </td>
            </tr>
        </table>
        <table cellpadding="0" cellspacing="0" class="auto-style18">
            <tr>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/admlogin.aspx">Admin</asp:HyperLink>
                </td>
                <td class="auto-style20" rowspan="6">
                    <table cellpadding="0" cellspacing="0" class="auto-style21">
    <tr>
        <td style="background-color: #FDF7E3">
            <h1 class="auto-style23"><strong>ADMIN LOGIN</strong></h1>
            <p style="text-align: center; font-size: x-large">
                <strong><span class="auto-style24">&nbsp;&nbsp; LOGIN ID&nbsp;&nbsp; </span>
                <asp:TextBox ID="txtname" runat="server" CssClass="auto-style24"></asp:TextBox>
                <span class="auto-style24">&nbsp;
            </span></strong>
            </p>
            <p style="text-align: center; font-size: x-large">
                <span class="auto-style24"><strong>PASSWORD</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="166px"></asp:TextBox>
&nbsp;
            </p>
            <p style="text-align: center; font-size: x-large">
                <asp:Label ID="lblerror" runat="server" Text="Alert!"></asp:Label>
            </p>
            <p style="text-align: center; font-size: x-large">
                <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" 
                    style="height: 26px; font-weight: 700;" Text="LOGIN" />
            </p>
            <p style="text-align: center; font-size: x-large">
                &nbsp;</p>
            <p style="text-align: center; font-size: large">
&nbsp;&nbsp;&nbsp;
            </p>
            <p style="text-align: center; font-size: small">
                <a href="mailto:copyright@2017">copyright@2017</a><strong> bureau of crime research and 
                criminal status tracking</strong></p>
        </td>
    </tr>
</table>
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
                <td class="auto-style19">
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


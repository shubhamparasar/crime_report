<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aftrAdminLogin.aspx.cs" Inherits="aftrAdminLogin" %>


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
        .auto-style25
        {
            width: 100%;
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
                    <strong></strong>
                    <table cellspacing="1" class="auto-style25">
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/missing2.aspx">Add Missing Person</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/missing4.aspx">Update &amp; Delete Missing</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/mostWantedAdmin.aspx">Add Most-Wanted</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/MostWanted_VUD_Admin.aspx">Update &amp; Delete Most-Wanted</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/WebAddThanaAdmin.aspx">Add Thana</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/AdminAddedThanaUpdate.aspx">Update &amp; Delete Admin Added Thana</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/thanaUpdateAdmin.aspx">Update &amp; Delete Thana</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/fir_admin.aspx">Update &amp; Delete FIR</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/AdminLogout.aspx">Logout</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
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
                    <asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/thanasigninmaster.aspx">Thana Sign In</asp:HyperLink>
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

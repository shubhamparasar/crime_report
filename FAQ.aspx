<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

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
    .auto-style24 {
        text-decoration: underline;
    }
    .auto-style22 {
        width: 100%;
        height: 268px;
    }
    .auto-style25 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        text-transform: uppercase;
        font-weight: bold;
            }
        .auto-style26 {
            font-size: medium;
        }
        .auto-style28 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            text-transform: none;
            font-style: italic;
        }
        .auto-style29 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: medium;
            text-transform: none;
            font-weight: normal;
            font-style: italic;
        }
        .auto-style30 {
            text-align: left;
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
                    <table cellpadding="0" cellspacing="0" class="auto-style21">
    <tr>
        <td style="background-color: #FDF7E3" class="auto-style30"><span class="auto-style24"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FAQs<br />
            </strong></span><span class="auto-style26"><em style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif"><strong>Question:</strong> <strong>Why this application has been developed?</strong>
            <br />
            <strong>Answer:</strong> Delhi Police has consistently been adopting new methodologies and technologies to enhance its service delivery capacity. Our endeavor has been to identity areas where newer means can help in reducing public inconvenience. The main purpose of this web application is to provide PCC (Police Clearance Certificate) online.<br />
            <br />
            <strong>Question: Can I check the details of all PCC issued to me or I applied for?<br />
            </strong>&nbsp;<strong>Answer:</strong> Yes, all PCC will be saved in your account and you can view the details any time.<br />
            <br />
            <strong>Question: I am newly married and living in my in-laws house but I have no valid I.D. proof of present address. How I can get my PCC? <br />
            Answer:</strong> You can apply through online for PCC and attached I.D. proof of your husband of the present address alongwith copy of your I.D. proof, marriage certificate or copy of application applied to concerned department for transfer of I.D. proof which may also been shown to the enquiry office at the time of field enquiry. </em></span></td>
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
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/thanasigninmaster.aspx">Thana Sign In</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/gallery.aspx">Gallery</asp:HyperLink>
                </td>
            </tr>
        </table>
        &nbsp;<table cellpadding="0" cellspacing="0" class="auto-style22">
    <tr>
        <td style="background-color: #F0FFFF">
            <p class="auto-style25">
                <em>Q</em><span class="auto-style28">uestion: I have forget my Password, How can I check the status of my PCC? </span></p>
            <p class="auto-style29">
                <strong>Answer: </strong>A retrieve option has been given in the website, you can use the retrieve option and regenerate your new password. As this office has no provision/system to provide the forget password to the applicant. </p>
            <p>
                &nbsp;</p>
            <p>
                you can contact us on <a href="mailto:bcrstindia@indiangov.in">bcrstindia@indiangov.in</a> or visit our website <a href="http://www.bcrstindia.com">www.bcrstindia.com</a>.</p>
        </td>
    </tr>
</table>
        <table cellpadding="0" cellspacing="0" class="auto-style14">
            <tr>
                <td class="auto-style17">
                    helpline numbers<b><font  face="times new roman" color="brown"><marquee 
                        style="width: 1344px; margin-left: 0px; height: 19px;">Eyes and Ears:1090 Women:1091 Missing Persons:1094 Traffic:1095 Vigilance:1064 Children:1234 Senior Citizen:4567 Fire And Safety:5678 ambulance:191 trafficking:4567 </marquee></font></b></td>
            </tr>
        </table>
    </form>
    
</body>
</html>

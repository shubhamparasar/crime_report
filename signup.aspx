<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

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
            width: 285px;
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
        .auto-style27
        {
            font-size: medium;
            color: #000000;
        }
        .auto-style28
        {
            text-align: right;
            font-size: medium;
            background-color: #FFFFCC;
            width: 217px;
        }
        .auto-style29
        {
            width: 145px;
            text-align: center;
            font-weight: bold;
            background-color: #996633;
            font-size: medium;
        }
        .auto-style30
        {
            width: 125px;
            text-align: left;
        }
        .auto-style31
        {
            text-align: left;
        }
        .auto-style33
        {
            color: #006600;
            text-decoration: blink;
            text-transform: capitalize;
            font-size: xx-large;
            width: 217px;
            text-align: right;
        }
        .auto-style34
        {
            text-align: right;
            font-size: medium;
            background-color: #FFFFCC;
            width: 217px;
            height: 35px;
        }
        .auto-style35
        {
            text-align: left;
            height: 35px;
        }
        .auto-style36
        {
            text-align: right;
            font-size: medium;
            background-color: #FFFFCC;
            width: 217px;
            height: 40px;
        }
        .auto-style37
        {
            text-align: left;
            height: 40px;
        }
        .auto-style38
        {
            color: #FF0000;
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
        <td style="background-color: #FDF7E3">
    <div>
    
        <table cellpadding="2" class="auto-style5">
            <tr>
                <td class="auto-style29" style="text-align:center; color: #33CCFF;">USER SIGN UP</td>
            </tr>
        </table>
        <table cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style36">First Name<span class="auto-style38">*</span>:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="txt1stname" runat="server" CssClass="auto-style27"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1stname" ErrorMessage="RequiredFieldValidator" CssClass="auto-style27"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Last Name<span class="auto-style38">*</span>:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txt2ndname" runat="server" CssClass="auto-style27"></asp:TextBox>
                    <span class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt2ndname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Email ID<span class="auto-style38">*</span>:</span></td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style27"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtemail" CssClass="auto-style27" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">Contact Number:</td>
                <td class="auto-style35">
                    <asp:TextBox ID="txtcontact" runat="server" CssClass="auto-style27"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Password<span class="auto-style38">*</span>:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtpass" runat="server" CssClass="auto-style27" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Confrim Password:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtconpass" runat="server" CssClass="auto-style27" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtpass" ControlToValidate="txtconpass" CssClass="auto-style27"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Aadhar ID<span class="auto-style38">*</span>:</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtaadhar" runat="server" CssClass="auto-style27"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style31">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Agree terms &amp; conditions" CssClass="auto-style27" />
                    <span class="auto-style27">&nbsp;&nbsp;
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style30">
                    <asp:Button ID="Button1" runat="server" Text="Sign Up" Width="145px" Height="39px" CssClass="auto-style27" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
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
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/thanasigninmaster.aspx">Thana Sign In</asp:HyperLink>
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

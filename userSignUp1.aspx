<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userSignUp1.aspx.cs" Inherits="userSignUp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #C0C0C0;
        }
        .auto-style2
        {
            height: 30px;
        }
        .auto-style3
        {
            text-align: right;
            width: 542px;
            height:60px;
            color: #800080;
        }
        .auto-style4
        {
            height: 30px;
            width: 542px;
        }
        .auto-style5
        {
            width: 100%;
        }
        .auto-style6
        {
            height: 140px;
        }
        .auto-style7
        {
            text-align: right;
            width: 542px;
            color: #800080;
            height:60px;
        }
        .auto-style8
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="2" class="auto-style5">
            <tr>
                <td class="auto-style6" style="text-align:center; font-size:50px;">USER SIGN UP</td>
            </tr>
        </table>
        <table cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style3">First Name:</td>
                <td>
                    <asp:TextBox ID="txt1stname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1stname" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name:</td>
                <td>
                    <asp:TextBox ID="txt2ndname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt2ndname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Email ID:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Contact Number:</td>
                <td>
                    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confrim Password:</td>
                <td>
                    <asp:TextBox ID="txtconpass" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtpass" ControlToValidate="txtconpass"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Aadhar ID:</td>
                <td>
                    <asp:TextBox ID="txtaadhar" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Agree terms &amp; conditions" />
                &nbsp;&nbsp;
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Sign Up" Width="145px" Height="39px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

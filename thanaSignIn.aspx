<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thanaSignIn.aspx.cs" Inherits="thanaSignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            height: 115px;
        }
        .auto-style3
        {
            width: 605px;
            text-align: right;
        }
        .auto-style4
        {
            width: 605px;
            text-align: right;
            height: 36px;
        }
        .auto-style5
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align:center; font-size:30px;">Thana Sign In</td>
            </tr>
        </table>
    
    </div>
        <table cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style4">Username:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login " OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

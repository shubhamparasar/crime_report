<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thanaSignUp.aspx.cs" Inherits="thanaSignUp" %>

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
            width: 414px;
            text-align:right;
            color:#800080;
        }
        .auto-style3
        {
            width: 414px;
            height: 25px;
            text-align:right;
            color:#800080;
        }
        .auto-style4
        {
            height: 25px;
        }
        .auto-style5
        {
            width: 414px;
            height: 28px;
        }
        .auto-style6
        {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellspacing="1" class="auto-style1">
            <tr>
                <td class="auto-style2">Thana ID:</td>
                <td>
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Thana Name:</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td>
                    <asp:TextBox ID="txtconpass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconpass" ErrorMessage="not same password" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact Number:</td>
                <td>
                    <asp:TextBox ID="txtno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email ID:</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Officer Name:</td>
                <td>
                    <asp:TextBox ID="txtofficer" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Pin Code:</td>
                <td>
                    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Sign Up" Width="111px" OnClick="Button1_Click" style="height: 29px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
    
</html>

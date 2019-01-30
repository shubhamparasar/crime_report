<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thana.aspx.cs" Inherits="thana" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 168px;
        }
        .auto-style3 {
            width: 168px;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style3">Police Station Id:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtid" runat="server" OnTextChanged="txtid_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Police Station Name:</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact No.:</td>
                <td>
                    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email Id:</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Officer&#39;s Name:</td>
                <td>
                    <asp:TextBox ID="txtofficer" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Pincode:</td>
                <td>
                    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnsub" runat="server" Text="Submit" OnClick="btnsub_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

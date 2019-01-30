<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mostwanted.aspx.cs" Inherits="mostwanted" %>

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
            width: 168px;
        }
        .auto-style3
        {
            width: 138px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">ThanaId:&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtthanaid" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Description:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Place where last spotted:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtlastspotted" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Reward:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtreward" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Crime type:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcrimetype" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Image:</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" 
                        Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

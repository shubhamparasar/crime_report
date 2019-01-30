<%@ Page Language="C#" AutoEventWireup="true" CodeFile="missing.aspx.cs" Inherits="missing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 201px;
        }
        .auto-style3 {
            width: 201px;
            height: 19px;
        }
        .auto-style4 {
            height: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style2">Police Station Id:</td>
                <td>
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Missing Person&#39;s Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtperson" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Description:</td>
                <td>
                    <asp:TextBox ID="txtdes" runat="server" OnTextChanged="txtdes_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact No.:</td>
                <td>
                    <asp:TextBox ID="txtcon" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Picture:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btncomplain" runat="server" Text="Submit Complain" OnClick="btncomplain_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="missingupdate.aspx.cs" Inherits="missingupdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            width: 163px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Police Station Id:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="cmbid" runat="server" OnSelectedIndexChanged="cmbid_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsearch" runat="server" Text="Search Id" OnClick="btnsearch_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Missing Person&#39;s Name:</td>
                <td>
                    <asp:TextBox ID="txtperson" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Description:</td>
                <td>
                    <asp:TextBox ID="txtdes" runat="server"></asp:TextBox>
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnupdate" runat="server" Text="Update Complain" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btndelete" runat="server" Text="Delete " />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

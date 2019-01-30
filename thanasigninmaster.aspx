<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thanasigninmaster.aspx.cs" Inherits="thanasigninmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form2" runat="server">
    <div>
        <table align="center" cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align:center; font-size:30px;"><strong>Thana Sign In</strong></td>
            </tr>
        </table>
    </div>
    <table cellpadding="2" class="auto-style1">
        <tr>
            <td class="auto-style4" style="font-size: large; width: 236px; color: #000000; text-align: right;">Username:</td>
            <td class="auto-style5" style="background-color: #E6FFFF; text-align: left;">
                <asp:TextBox ID="txtname" runat="server" style="margin-left: 0px; margin-bottom: 0px; text-align: left;" Width="148px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Username" style="font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="font-size: large; width: 236px; color: #000000; background-color: #E6FFFF; text-align: right;">Password:</td>
            <td style="background-color: #E6FFFF; text-align: left;">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Password" style="font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 236px; color: #000000; background-color: #E6FFFF; text-align: right;">&nbsp;</td>
            <td style="text-align: left">
                <asp:Label ID="lblerror" runat="server" style="font-size: large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 236px; color: #000000; background-color: #E6FFFF; text-align: right;">&nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="Button1" runat="server" Text="Login " OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="width: 236px; color: #000000; background-color: #E6FFFF; text-align: right;">&nbsp;</td>
            <td style="text-align: left">
                &nbsp;<asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/thanasignupmaster.aspx">Sign Up</asp:HyperLink>
            </td>
        </tr>
    </table>
</form>
</asp:Content>


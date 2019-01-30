<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WebAddThanaAdmin.aspx.cs" Inherits="WebAddThanaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form5" runat="server" style="font-size: medium">
        <div>
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style2" style="width: 368px; text-align: right">
                        <asp:Label ID="Label7" runat="server" Text="Thana ID"></asp:Label>
                    *:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtid" ErrorMessage="Missing Id"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 368px; text-align: right">
                        <asp:Label ID="Label2" runat="server" Text="Thana Name"></asp:Label>
                    *:</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtname" runat="server" style="height: 22px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="Missing Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 368px; text-align: right">
                        <asp:Label ID="Label3" runat="server" Text="Contact No.:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="contact Missing" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" rowspan="2" style="width: 368px; text-align: right">
                        <asp:Label ID="Label4" runat="server" Text="Email Id:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Email ID missing" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="invaild Email ID" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 368px; text-align: right">
                        <asp:Label ID="Label5" runat="server" Text="Officer's Name:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtofficer" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtofficer" ErrorMessage="missing Officer's Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 368px; text-align: right">
                        <asp:Label ID="Label6" runat="server" Text="Pincode:"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpin" ErrorMessage="pin Missing" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 368px; text-align: right">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 368px; text-align: right">&nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 368px; text-align: right">&nbsp;</td>
                    <td style="text-align: left">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>


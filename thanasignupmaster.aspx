<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thanasignupmaster.aspx.cs" Inherits="thanasignupmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form2" runat="server">
    <div>
        <table cellspacing="1" class="auto-style1" style="width: 100%">
            <tr>
    
 
    
    <span id="form5" runat="server">
                <td class="auto-style2" style="width: 235px; text-align: right; font-size: large; height: 32px;">Pin Code:</td>
                <td style="text-align: left; height: 32px;">
                    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                </td>
    </span>
   
   
            </tr>
            <tr>
                <td class="auto-style2" style="width: 235px; text-align: right; font-size: large">Thana ID:</td>
                <td style="text-align: left">
    
 
    
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
   
   
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 235px; text-align: right; font-size: large">Thana Name:</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtname" runat="server" style="font-size: large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 235px; text-align: right; font-size: large; background-color: #E6FFFF">Password:</td>
                <td class="auto-style4" style="text-align: left">
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" style="font-size: large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="RequiredFieldValidator" style="font-size: large"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 235px; text-align: right; font-size: large">Confirm Password</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtconpass" runat="server" TextMode="Password" style="font-size: large"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconpass" ErrorMessage="not same password" ForeColor="#FF3300" style="font-size: large"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 235px; text-align: right; font-size: large">Contact Number:</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtno" runat="server" style="font-size: large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 235px; text-align: right; font-size: large">Email ID:</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtemail" runat="server" style="font-size: large"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="font-size: large"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 235px; text-align: right; font-size: large">Officer Name:</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtofficer" runat="server" style="font-size: large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="width: 235px; text-align: left"></td>
                <td class="auto-style6" style="text-align: left"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 235px">&nbsp;</td>
                <td style="text-align: left">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="111px" OnClick="Button1_Click" style="height: 29px; text-align: left;" />
&nbsp;</td>
            </tr>
        </table>
    </div>
</form>
</asp:Content>


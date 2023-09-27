<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Electronic_items_2.Login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <%--<style type="text/css">
        .style2
        {
            height: 83px;
        }
        .style3
        {
            width: 433px;
            color: #FFFFFF;
            font-weight: bold;
        }
        .style4
        {
            width: 433px;
            color: #FFFFFF;
        }
        .style5
        {
            width: 89px;
        }
        .style6
        {
            text-align: center;
            color: #FFFFFF;
        }
        .style7
        {
            color: #FFFFFF;
        }
    </style>
--%>    
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
    
        <table align="center" 
            style="width: 615px; height: 457px; background-color: DarkCyan;" 
            bgcolor="DarkCyan">
            <tr>
                <td colspan="2" align="center" class="style2">
                    <h1 style="background-color: DarkCyan; " class="style6">Login</h1></td>
            </tr>
            <tr>
                <td align="center" class="style4">
                    <strong><h2 class="style7">Email ID:</h2></strong></td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="56px" Width="240px" 
                        TextMode="Email" BackColor="DarkCyan" BorderStyle="Solid" 
                        BorderColor="White"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style3">
                   <h2 class="style7">Password:</h2></td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="52px" Width="245px" 
                        TextMode="Password" BackColor="DarkCyan" BorderStyle="Solid" 
                        BorderColor="White"></asp:TextBox>
                    &nbsp;
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="background-color: DarkCyan">
                    <asp:Button ID="Button1" runat="server" Text="Login" Height="46px" 
                        Width="200px" BackColor="DarkCyan" Font-Bold="True" Font-Size="Large" 
                        onclick="Button1_Click" BorderStyle="Ridge" ForeColor="White" />
                   </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

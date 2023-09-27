<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="Electronic_items_2.Reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        div
        {
      
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-color: #CCFFFF; width: 2074px; margin-left: 182px;">
    <div align="center">
    <h1 align="center">Registration Form</h1>
        <p align="center"></p>

        <asp:Label ID="name" runat="server" Text="Name" 
            style="font-size: large; font-weight: 700"></asp:Label>
       
        <br />

        <asp:TextBox ID="TextBox1" runat="server" Height="52px" Width="255px"></asp:TextBox>

        <br />
        <br />
        <br />


        <asp:Label ID="email" runat="server" Text="Email" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
        
        <br />

        <asp:TextBox ID="TextBox2" runat="server" Height="52px" Width="256px"></asp:TextBox>

        <br />
        <br />

        <br />

        

        <asp:Label ID="password" runat="server" Text="Password" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <br />

        <asp:TextBox ID="TextBox3" runat="server" Height="52px" Width="248px"></asp:TextBox>

        <br />

        <br />

        <asp:Label ID="gender" runat="server" Text="Gender" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="Genderlist" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />

       

        <asp:Button ID="register" runat="server" Text="Register" 
            onclick="register_Click" Height="56px" Width="234px" Font-Bold="True" 
            Font-Size="Large" />

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </form>
</body>
</html>

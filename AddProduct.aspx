<%@ Page Title="" Language="C#" MasterPageFile="~/defaultt.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Electronic_items_2.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div style=" height:510px">
    <table style=" width:700px; height:390px; background-color:#caf1de;" align="center">
    <tr>
        <td align="center" width="50%" colspan="2">
            <h1>Adding Product</h1>
            <hr />
        </td>
        <td>
            
        </td>
    </tr>

    <tr>
        <td align="center" width="50%">
             <h3>Product ID</h3></td>
        <td width="50%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td align="center" width="50%">
        
            <h3>Product Name</h3></td>
        <td width="50%"> 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
</tr>
    <tr>
        <td align="center" width="50%">
            <h3>Product Desc</h3>
           </td>
        <td width="50%">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td align="center" width="50%">
            <h3>Image</h3>
        </td>
        <td width="50%">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>

    <tr>
        <td align="center" width="50%">
            <h3>Product Price</h3>
        </td>
        <td width="50%">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td align="center" width="50%" colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Add" BackColor="#CCFFFF" 
                BorderStyle="Double" Font-Bold="True" Font-Size="Large" Font-Underline="False" 
                ForeColor="Black" Height="36px" onclick="Button1_Click" Width="88px" />
        </td>
       
    </tr>

    <tr>
        <td align="center" width="50%" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        
    </tr>
    
    </table>
</div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/defaultt.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Electronic_items_2._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style=" width:1150px; height:30px">
    <tr style=" background-color:#5f98f3">
        <td colspan="2" style=" text-align:right">
            <asp:Label ID="Label4" runat="server" style=" text-align:left" Font-Bold="True"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                NavigateUrl="~/Login1.aspx">Click to Login</asp:HyperLink>
            <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="Red" 
                BorderColor="Black" BorderStyle="Double" Font-Bold="True" Font-Names="Algerian" 
                ForeColor="White" Height="30px" Width="110px" onclick="Button1_Click" />
        </td>

      

        <td style=" text-align:right">
            <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="174px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="23px" 
                ImageUrl="~/SINGH/searchiconn.jpg" Width="30px" 
                onclick="ImageButton2_Click" />
        </td>
    

    </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        Height="293px" Width="100px" RepeatColumns="4" 
        RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">

    <ItemTemplate>
        <table>
            <tr>
                <td style= "text-align:center; background-color:#5f98f3">

                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("PName") %>' Font-Bold="True" 
                        ForeColor="White"></asp:Label>
                </td>
            </tr>

            <tr>
                <td style= "text-align:center">
                    <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="1px" 
                        Height="279px" Width="278px" ImageUrl='<%# Eval("Pimage") %>'/>
                </td>
            </tr>

            <tr>
                <td style= "text-align:center; background-color:#5f98f3">
                    <asp:Label ID="Label2" runat="server" Text="Price:Rs" Font-Bold="True" 
                        ForeColor="White" style=" text-align:center"></asp:Label>

                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" 
                        ForeColor="White" style=" text-align:center"></asp:Label>
                </td>
            </tr>

            <tr>
                <td align="center">Quantity
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td style= "text-align:center">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" 
                        ImageUrl="~/images/img1cart.jpg" Width="160px"  CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart"/>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [ProductId], [PName], [Pdesc], [Pimage], [Pprice] FROM [Product1]"></asp:SqlDataSource>
</asp:Content>

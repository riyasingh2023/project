<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="Electronic_items_2.AddToCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style=" margin:0 auto;">
        
        <h2 style=" text-decoration: Underline overline blink; color:black">You Have Following Product In Your Cart</h2>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Names="Colonna MT" Font-Size="X-Large" NavigateUrl="~/default.aspx">Continue Shopping</asp:HyperLink>
            <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCFFFF" BorderColor="Black" BorderWidth="5px" 
            EmptyDataText="No Product Available in Shopping Cart " Font-Bold="True" 
            Height="257px" ShowFooter="True" Width="1100px" 
            onrowdeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sr.No">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pid" HeaderText="Product ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                    <ControlStyle Height="300px" Width="340px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="pname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Ptotalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#FF9966" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#FF9966" ForeColor="White" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" BackColor="Aqua" 
            BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Size="Large" 
            Height="46px" Width="135px" onclick="Button1_Click" />

            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PlaceOrder.aspx">PlaceOrder</asp:HyperLink>

    </div>
    </form>
</body>
</html>

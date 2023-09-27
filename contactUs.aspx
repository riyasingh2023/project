<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="Electronic_items_2.contactUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style5
        {
            width: 51%;
            height: 555px;
        }
        .style6
        {
            height: 78px;
        }
        .style7
        {
            width: 539px;
            font-weight: 700;
        }
        .style8
        {
            width: 566px;
        }
        .style9
        {
            color: #000000;
        }
        .style10
        {
            width: 644px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style5" align="center" style="background-color: #FFFFFF">
            <tr>
                <td colspan="2" class="style6">
                    <h2 style="text-align: center; width: 953px; height: 73px;">Contact Us</h2></td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style7">
                   <h3>Name</h3></td>
                <td class="style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="75px" Width="343px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                  <h3>Phone Number</h3>  </td>
                <td class="style10">
                    <asp:TextBox ID="TextBox2" runat="server" Height="62px" Width="341px" 
                        TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                   <h3>Email Id</h3></td>
                <td class="style10">
                    <asp:TextBox ID="TextBox3" runat="server" Height="61px" Width="339px" 
                        TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                   <h3>Message</h3></td>
                <td class="style10">
                    <asp:TextBox ID="TextBox4" runat="server" Height="111px" Width="337px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Submit Contact" 
                        BackColor="#666666" BorderColor="#333333" BorderStyle="Groove" Font-Bold="True" 
                        Font-Size="Large" ForeColor="White" Height="65px" 
                        onclick="Button1_Click" /></td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                     <h3>&nbsp;</h3>
                     <div class="item-2" style="background-color: #CCCCCC">
                         <div align="center" class="contact-infomation" 
                             style="background-color: #C0C0C0">
                             <div class="item">
                                 <h3 class="style9">
                                     STORE ADDRESS</h3>
                                 <p>
                                     <strong>Quartz Components<br />
                                     </strong>665, Siddharth Nagar-A, Airport Road, Malviya Nagar, Jaipur -302017<br />
                                     India<br />
                                     <br />
                                     <strong>COMPANY DETAILS</strong><br />
                                     Circuitloop Technologies LLP<br />
                                     GSTIN: 08AAMFC3887F1Z3<br />
                                     <br />
                                     <strong>Opening Hours:</strong><br />
                                     Monday to Friday 10.00 am - 6.30 pm</p>
                             </div>
                             <div class="item">
                                 <h3 class="title">
                                     Get In Touch:</h3>
                                 <p>
                                     <strong>Call Toll-Free</strong></p>
                                 <p>
                                     0141-4946677</p>
                                 <p>
                                     <strong>Email</strong></p>
                                 <p>
                                     support@quartzcomponents.com</p>
                             </div>
                         </div>
                     </div>
                     <p style="text-align: center">&nbsp;</p></td>
                <td class="style8">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

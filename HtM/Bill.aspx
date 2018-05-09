<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="HtM.Bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
             <td>Number of items selected</td>
                <td>
                    <asp:DropDownList ID="Quantity" runat="server" Width="50px">
                         <asp:ListItem Text="1" Value="1"></asp:ListItem>
                         <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td> Total</td>
                <td>
                    <asp:Label ID="totalbill" runat="server" Text=" "></asp:Label>  
                    </td>
            </tr>
           
        </table>
        <asp:Button ID="SM" runat="server" Text="Shop More" PostBackUrl="~/Home.aspx" OnClick="SM_Click" />
        <br />
        <br />
        <asp:Button ID="CO" runat="server" Text="Check out" PostBackUrl="~/CustInfo.aspx" />
    </div>
    </form>
</body>
</html>

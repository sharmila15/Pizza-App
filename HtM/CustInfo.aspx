<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustInfo.aspx.cs" Inherits="HtM.CustInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="CustmInfo" runat="server">
    <div>
    <table>
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="fn" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="ln" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="addr" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td>
                <asp:TextBox ID="phn" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Credit Card Number</td>
            <td>
                <asp:TextBox ID="ccn" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>CVV</td>
            <td>
                <asp:TextBox ID="cvv" runat="server" MaxLength="3"></asp:TextBox></td>
        </tr>
        
        <tr>
            <td>Expiration Date</td>
            <td>
                <asp:TextBox ID="ed" runat="server"></asp:TextBox></td>
        </tr>

    </table>
        <asp:Button ID="SO" runat="server" OnClick="SubmitButton_Click" Text="Submit Order" />
         
    </div>
    </form>
    <asp:Label ID="succ" runat="server" ></asp:Label>
    <asp:Label ID="date" runat="server" ></asp:Label>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
</body>
</html>

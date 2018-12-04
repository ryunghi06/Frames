<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Frames.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="border:1px solid #999;">
         <tr>
             <th colspan="3" style="background-color:#808080; color:#fff; text-align:left;padding:3px 5px;">Login Page</th>
         </tr>
         <tr>
             <td>Username : </td>
             <td>
                 <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>Password :</td>
             <td>
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td colspan="3">
                 <asp:Button ID="btnLogin" runat="server" Text="Login" style="padding:3px 5px; background-color:#ff6a00; color:#000000; border:1px solid #ff6a00;" OnClick="btnLogin_Click" />
             </td>
         </tr>
     </table>
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>

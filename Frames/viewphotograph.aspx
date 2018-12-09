<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewphotograph.aspx.cs" Inherits="Frames.viewphotograph" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="viewPhoto" runat="server">
        <div>
            <asp:Image ID="ViewImageCtrl" runat="server" />
        </div>
        <asp:Button ID="btnDownload" runat="server" Text="Download" OnClick="btnDownload_Click" />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

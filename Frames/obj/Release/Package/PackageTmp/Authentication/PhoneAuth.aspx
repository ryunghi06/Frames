<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhoneAuth.aspx.cs" Inherits="Frames.Authentication.PhoneAuth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <!-- Animate.css -->
	<link rel="stylesheet" href="../css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="../css/magnific-popup.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<link rel="stylesheet" href="../css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="../css/style.css">

	<!-- Modernizr JS -->
	<script src="../js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
    <title>Frames Phone Authentication</title>
</head>
<body>
    <form id="phoneAuthForm" runat="server">
          <div class="form-group col-xs-4">
      <label for="usr">Your Phone Number:</label>
      <asp:textbox type="text" class="form-control" id="usrPhone" runat="server"/>
      <asp:button type="button" class="form-control" id="btnSendAuth" text="Send Auth Code" runat="server" OnClick="btnSendAuth_Click"/>
      <label for="pwd">Auth Code:</label>
      <asp:textbox type="text" class="form-control" id="authCode" runat="server"/>
        <asp:button type="button" class="form-control" id="btnSConfirmAuth" text="Confirm Auth Code" runat="server" OnClick="btnSConfirmAuth_Click"/>
            <asp:Label ID="ErrorMessage" runat="server"/>
    </div>
    </form>
</body>
</html>

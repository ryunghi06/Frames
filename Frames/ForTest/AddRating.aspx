<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRating.aspx.cs" Inherits="Frames.AddRateing" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Photography Website Frames</title>
	<meta name="description" content="A photography-inspired website layout with an expanding stack slider and a background image tilt effect" />
	<meta name="keywords" content="photography, template, layout, effect, expand, image stack, animation, flickity, tilt" />
	<meta name="author" content="Codrops" />
	<link rel="icon" href="favicon.ico">
	<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="../css/MainCss.css" />
	<script src="../js/modernizr-2.6.2.min.js"></script>
</head>
<body>
    <nav class="menu">
				<a class="menu__item menu__item--current"  href="http://localhost:50686/WebForm1.aspx"><span>Home</span></a>
                <a class="menu__item" href="#"><span>Gallery</span></a>
                <a class="menu__item" href="#"><span>Services</span></a>
                <a class="menu__item" href="#"><span>Blog</span></a>
                <a class="menu__item" href="#"><span>About Us</span></a>
				<a class="menu__item" href="#"><span>Contact Us</span></a>
	</nav>
    <div>        
        <form runat="server">
            <asp:Panel ID="Panel1" runat="server" BorderColor="#333300" BorderStyle="Solid" Width="800px">
            </asp:Panel>
        </form>
    </div>
        </body>
</html>
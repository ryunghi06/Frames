<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadPhoto.aspx.cs" Inherits="Frames.UploadPhoto" %>

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
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/MainCss.css" />
	<script src="JavaScript/modernizr.custom.js"></script>
</head>
<body>
	<div class="container">
		<div class="hero">
			<div class="hero__back hero__back--static"></div>
			<div class="hero__back hero__back--mover"></div>
			<div class="hero__front"></div>
		</div>
		<header class="codrops-header">
			<div class="codrops-links">
				<a class="codrops-icon codrops-icon--prev" href="http://localhost:50686/WebForm1.aspx" title="Previous Demo"><span>Previous Demo</span></a>
				<a class="codrops-icon codrops-icon--drop" href="http://localhost:50686/WebForm1.aspx" title="Back to the article"><span>Back to the Codrops article</span></a>
			</div>
			<h1 class="codrops-title"> Frames: Imagination Is the Only Limit<span></span></h1>
			<nav class="menu">
				<a class="menu__item menu__item--current"  href="http://localhost:50686/WebForm1.aspx"><span>Home</span></a>
                <a class="menu__item" href="#"><span>Gallery</span></a>
                <a class="menu__item" href="#"><span>Services</span></a>
                <a class="menu__item" href="#"><span>Blog</span></a>
                <a class="menu__item" href="#"><span>About Us</span></a>
				<a class="menu__item" href="#"><span>Contact Us</span></a>
			</nav>
		</header>
        </div>
    <div>
        <form runat="server" class="auto-style4">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Add Photograph </strong></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txtPhotoName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td>
                        <asp:TextBox ID="txtPhotoDesc" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Location:</td>
                    <td>
                        <asp:TextBox ID="txtPhotoLocation" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Keywords:</td>
                    <td>
                        <asp:TextBox ID="txtPhotoKeywords" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td>
                        <asp:TextBox ID="txtPhotoPrice" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblPriceMsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Photograph:</td>
                    <td>
                        <asp:FileUpload ID="filePhotoUpload" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnAddPhoto" runat="server" OnClick="btnAddPhoto_Click" Text="Add Photo" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblOutputSuccessMsg" runat="server" ForeColor="#33CC33"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblOutputFailMessage" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    </div>
        </body>
</html>


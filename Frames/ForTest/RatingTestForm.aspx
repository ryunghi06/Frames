<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RatingTestForm.aspx.cs" Inherits="Frames.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
	<script src="../js/modernizr.custom.js"></script>
    <style>
        .starRating {
            width: 50px;
            height: 50px;
            cursor: pointer;
            background-repeat: no-repeat;
            display: block;
        }

        .FilledStar {
            background-image: url("../images/FilledStar.jpg");
        }

        .NormalStar {
            background-image: url("../images/EmptyStar.jpg");
        }
    </style>
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
				<a class="codrops-icon codrops-icon--prev" href="RatingTestForm.aspx" title="Previous Demo"><span>Previous Demo</span></a>
				<a class="codrops-icon codrops-icon--drop" href="RatingTestForm.aspx" title="Back to the article"><span>Back to the Codrops article</span></a>
			</div>
			<h1 class="codrops-title"> Frames: Imagination Is the Only Limit<span></span></h1>
			<nav class="menu">
				<a class="menu__item menu__item--current"  href="RatingTestForm.aspx"><span>Home</span></a>
                <a class="menu__item" href="#"><span>Gallery</span></a>
                <a class="menu__item" href="#"><span>Services</span></a>
                <a class="menu__item" href="#"><span>Blog</span></a>
                <a class="menu__item" href="#"><span>About Us</span></a>
				<a class="menu__item" href="#"><span>Contact Us</span></a>
			</nav>
		</header>
        </div>
    <div>
        <form runat="server">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to Photo Gallery" />
            <br />
            <br />
            <asp:Image ID="Image3" runat="server" Width="500px" Height="500px"/>
            <br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <ajaxToolkit:Rating ID="Rating1" runat="server"
                         StarCssClass="starRating"
                         FilledStarCssClass="FilledStar"
                         EmptyStarCssClass="NormalStar"
                         WaitingStarCssClass="FilledStar">
                    </ajaxToolkit:Rating>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <asp:Button ID="btnRatings" runat="server" OnClick="btnRatings_Click" Text="Add Rating" />
            <br />
            <asp:Button ID="btnUpdateRating" runat="server" Text="Edit Rating" OnClick="btnUpdateRating_Click" />
            <br />
            <asp:Label runat="server" ID="lblRatings" ></asp:Label>
        </form>
    </div>
    <p>
        &nbsp;</p>
    <p>
&nbsp;
    </p>
    </body>
</html>

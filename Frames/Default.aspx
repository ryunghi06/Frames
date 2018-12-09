<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>
<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Load an icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Load an font library -->
<link href="https://fonts.googleapis.com/css?family=Orbitron:700" rel="stylesheet">  
<!-- Css -->
<link href="css/StyleSheet1.css" rel="stylesheet" />
<html>
    <head>
        <meta charset="utf-8" />
        <title>Frames - The Website</title>
    </head>

    <body>
        <div class="w3-container w3-lobster">
            <h1>Frames: Feel Alive</h1>
</div>
            

        <div class="topnav">
                <a class="active" href="#"><i class="fa fa-home"></i> Gallery</a> 
                <a href="#"><i class="fa fa-globe"></i> Services</a>
                <a href="#">Blog</a> 
                <a href="#">About Us</a>
                <a href="#"><i class="fa fa-envelope"></i> Contact Us</a>
                <a href="#"><i class="fa fa-fw fa-user"></i> Sign Up</a>
                <a href="#"><i class="fa fa-fw fa-user"></i> Login</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
        </div>

            <div class="box">
  <div class="container-4">
    <input type="search" id="search" placeholder="Search..." />
    <button class="icon"><i class="fa fa-search"></i></button>
  </div>
</div>

<!-- Header -->
<div class="header">
  <h1>Frames Gallery</h1>
</div>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
    <img src="/Photographers/sample/___Josh_Felise__20582735954.jpg" style="width:100%">
    <img src="/Photographers/sample/___Jennifer_Trovato__21193254022.jpg" style="width:100%">
  <%--  <img src="/Photographers\sample/___Steve_Richey__21203580945.jpg" style="width:100%">
    <img src="/Photographers/sample/Aircraft__skeeze__28255206155.jpg" style="width:100%">
    <img src="/Photographers/sample/b266674.jpg" style="width:100%">
    <img src="/Photographers/sample/Background__geralt__23854470669.jpg" style="width:100%">
    <img src="/Photographers/sample/bg4.jpg" style="width:100%">--%>
  </div>
  <div class="column">
    <img src="/Photographers\sample/bg5.jpg" style="width:100%">
<%--    <img src="/Photographers/sample/bg6.jpg" style="width:100%">--%>
    <%--<img src="/Photographers/sample/bg6.jpg" style="width:100%">
    <img src="/Photographers/sample/f16456.jpg" style="width:100%">
    <img src="/Photographers/sample/f5516930.jpg" style="width:100%">
    <img src="/Photographers/sample/g124865.jpg" style="width:100%">--%>
  </div>  
  <div class="column">
    <img src="/Photographers/sample/g124865.jpg" style="width:100%">
    <img src="/Photographers/sample/g16463.jpg" style="width:100%">
<%--    <img src="/Photographers/sample/g188001.jpg" style="width:100%">--%>
<%--    <img src="/Photographers/sample/g256393.jpg" style="width:100%">
    <img src="/Photographers/sample/g470508.jpg" style="width:100%">
    <img src="/Photographers/sample/g73896.jpg" style="width:100%">
    <img src="/Photographers/sample/g86580.jpg" style="width:100%">--%>
  </div>
  <div class="column">
    <img src="/Photographers/sample/g86580.jpg" style="width:100%">
    <img src="/Photographers/sample/g897009.jpg" style="width:100%">
<%--    <img src="/Photographers/sample/g907044.jpg" style="width:100%">
    <img src="/Photographers/sample/g989648.jpg" style="width:100%">
    <img src="/Photographers/sample/hd_027957227a0dd410c97be6b43069a6e5.jpg" style="width:100%">
    <img src="/Photographers/sample/hd_0c8f53f135192f30655bf1f965b085d1.jpg" style="width:100%">--%>
  </div>
</div>
        <div class="footer">
            <p>Frames Copyright@2018 - All rights reserved<br />
        </div>
        <div class="video-background">
    <div class="video-foreground">
      <iframe src="https://www.youtube.com/embed/_nE8AhurAs0?controls=0&showinfo=0&rel=0&autoplay=1&loop=1&playlist=W0LHTWG-UmQ" frameborder="0" allowfullscreen></iframe>
    </div>
  </div>




        
    </body>
</html>

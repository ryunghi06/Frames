<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs"  EnableEventValidation="false" Inherits="Frames.Default" %>

<!DOCTYPE html>
<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Load an icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Load an font library -->
<link href="https://fonts.googleapis.com/css?family=Orbitron:700" rel="stylesheet">  
<!-- Css -->

<!-- bootsrap css -->
<link rel="stylesheet" href="css/FramesDefaultStyle.css" />
<link rel="stylesheet" href ="css/bootstrap.min.css" />
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.css">
<script type="text/javascript" src="./js/angular-1.7.7/angular.min.js"></script>
<script type="text/javascript" src="./js/angular-1.7.7/angular-aria.min.js"></script>
<script type="text/javascript" src="./js/angular-1.7.7/angular-route.min.js"></script>
<script type="text/javascript" src="./js/angular-1.7.7/angular-messages.min.js"></script>
<script type="text/javascript" src="./js/angular-1.7.7/angular-animate.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.js"></script>
<script  type="text/javascript"  src="./js/PopupController.js"></script>
 <html >
    <head>
        <meta charset="utf-8" />
        <title>Frames - The Website</title>
    </head>

    <body class="FramesBody" data-ng-app="FramesPopup">

       <div data-ng-controller="PopupController" id="popupContainer" class="topnav" ng-cloak>
           
           <form runat="server">
               <!--<md-button class="btn btn-dark" ng-click="showAlert($event)">
                   Alert Dialog
               </md-button>-->
               <md-button class="md-primary md-raised" style="background-color:black">Gallery</md-button>
               <md-button class="md-primary md-raised" style="background-color:black">About Us</md-button>
               <md-button class="md-primary md-raised" style="background-color:black">Contact Us</md-button>
               <md-button class="md-primary md-raised" style="background-color:black">Sign Up</md-button>
               <md-button class="md-primary md-raised" style="background-color:black" ng-click="ShowSignin($event)" text="Sign In">Sign In</md-button>
           </form>

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
        



        
    </body>
</html>

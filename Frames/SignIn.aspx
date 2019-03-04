<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Frames.SignIn" %>

<!DOCTYPE html>
<!-- Css -->
<link href="css/StyleSheet1.css" rel="stylesheet" />
<!-- bootsrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.css">
<script type="text/javascript" src="./js/angular-1.7.7/angular.min.js"></script>
<script type="text/javascript" src="./js/angular-1.7.7/angular-aria.min.js"></script>
<script type="text/javascript" src="./js/angular-1.7.7/angular-route.min.js"></script>
<script type="text/javascript" src="./js/angular-1.7.7/angular-messages.min.js"></script>
<script type="text/javascript" src="./js/angular-1.7.7/angular-animate.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.12/angular-material.min.js"></script>
<script type="text/javascript" src="./js/PopupController.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body> 
    <div class="container">
        <div class="row" >
            <div class="mx-auto">
                <div class="card card-signin my-5">
                    <div class="card-body">
                        <h5 class="card-title text-center">Sign In</h5>
                        <form class="form-signin" ng-cloak>
                            <div class="form-label-group">
                                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                                <label for="inputEmail">Email address</label>
                            </div>

                            <div class="form-label-group">
                                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                                <label for="inputPassword">Password</label>
                            </div>

                            <div class="custom-control custom-checkbox mb-3">
                                <input type="checkbox" class="custom-control-input" id="customCheck1">
                                <label class="custom-control-label" for="customCheck1">Remember password</label>
                            </div>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Image Spilt & Encryption</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/icons.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Registration Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Login Failed..!')</script>
 <%
}
%> 
<body>
<header>
    <h1>Image Spilt & Encryption</h1>
</header>
<!--Nav Bar-->
<div class="topnav" id="myTopnav">
    <a href="index.html"><i class="fa fa-home">Home</i></a>
    <a href="admin.jsp"><i class="fa fa-chalkboard-teacher">Admin</i></a>
    <a href="user.jsp" class="active"><i class="fa fa-chalkboard-teacher">User</i></a>
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
    </a>
</div>
<!--Login Page-->
<div class="container-login100" >
    <div class="wrap-login100 p-t-10 p-b-10" style="margin-top: -4cm">
        <form action="useract.jsp" class="login100-form validate-form p-b-33 p-t-20 animated zoomIn" style="animation-duration: 1s; width:350px;position:relative;margin: auto;">
            <h3 style="text-align: center;padding-top: 0;padding-bottom: 10px"><u>User Login</u></h3>
            <div class="wrap-input100 validate-input" data-validate = "Enter username">
                <input class="input100" type="text" name="username" placeholder="Username"  autocomplete="off">
                <span class="focus-input100" data-placeholder="&#xe82a;"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate="Use at least 8 characters(include numbers,uppercase letters,lowercase letter)">
                <input class="input100" type="password" name="pass" placeholder="Password">
                <span class="focus-input100" data-placeholder="&#xe80f;"></span>
            </div>

            <div class="container-login100-form-btn m-t-32">
                <button class="login100-form-btn">Login</button>
            </div>
            <h3 style="padding-top: 25px; text-align: center"><a href="userreg.jsp" style="text-decoration: none!important; color: #333333"><b>New User Register Here....</b></a></h3>
     
        </form>
    </div>
</div>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="Js/main.js"></script>
<script src="Js/js.js"></script>
</body>
</html>
 <%@page import="java.sql.PreparedStatement"%>
<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<body>
<header>
    <h1>Image Spilt & Encryption</h1>
</header>
<!--Nav Bar-->
<!-- Dropdown Navbar -->
<nav>
    <ul>
        <li>
            <a href="userhome.jsp"><i class="fa fa-home">Home</i></a>
        </li>
        
        <li>
            <a href="upload.jsp"><i class="fa ">Upload Image</i></a>
        </li>
         <li>
            <a href="viewimages.jsp"><i class="fa ">View Images & Encrypt</i></a>
        </li>
        <li>
            <a href="decrypt.jsp" class="active"><i class="fa ">Decrypt</i></a>
        </li>
       
        <li>
            <a href="logout.jsp"><i class="fa ">Logout</i></a>
        </li>
    </ul>
</nav>
<br><br>


<br><br>


<center>
    
    <%
        
    String file = request.getParameter("img1");
    String file1 = request.getParameter("img2");
    String original = request.getParameter("imgname");
    
    
    %>
    
    <form action="decrypt1.jsp" class="login100-form validate-form p-b-33 p-t-20 animated zoomIn" style="animation-duration: 1s; width:350px;position:relative;margin: auto;">
            <h3 style="text-align: center;padding-top: 0;padding-bottom: 10px"><u>Enter Keys</u></h3>
        
            
            
            
            <div class="wrap-input100 validate-input" data-validate = "Enter Part 1 Key">
                <input class="input100" type="text" name="pk1" placeholder="Enter Part 1 Key"  autocomplete="off">
                <span class="focus-input100" data-placeholder="&#xe82a;"></span>
            </div>

             <div class="wrap-input100 validate-input" data-validate = "Enter Part 2 Key">
                <input class="input100" type="text" name="pk2" placeholder="Enter Part 2 Key"  autocomplete="off">
                <span class="focus-input100" data-placeholder="&#xe82a;"></span>
            </div>
            <input type="hidden" value="<%=file%>" name="file">
            <input type="hidden" value="<%=file1%>" name="file1">
            <input type="hidden" value="<%=original%>" name="original">
            <div class="container-login100-form-btn m-t-32">
                <button class="login100-form-btn">Decrypt</button>
            </div>
           
        </form>
    
    
    
</center>





<script src="Js/js.js"></script>
</body>
</html>
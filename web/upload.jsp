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
    
<script>alert('Uploaded Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Item Failed..!')</script>
 <%
}
%> 
<body>
    <%
    
String user = session.getAttribute("username").toString();

    %>
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
            <a href="upload.jsp" class="active"><i class="fa ">Upload Image</i></a>
        </li>
         <li>
            <a href="viewimages.jsp"><i class="fa ">View Images & Encrypt</i></a>
        </li>
        <li>
            <a href="decrypt.jsp"><i class="fa ">Decrypt</i></a>
        </li>
       
        <li>
            <a href="logout.jsp"><i class="fa ">Logout</i></a>
        </li>
    </ul>
</nav>
<br><br><br><br><br>
<form action="uploadact.jsp" method="post"  >
    <h3 style="text-align: center;padding-top: 0">Upload Image </h3><br>
            <center> 
                <tr>
                    <td>Select File</td>
                    <td><input  type="file" name="image"  autocomplete="off"></td>
                    
                </tr>
                <br><br>
                <tr><td><input type="submit" value="Upload"></td></tr>
               </center></form>
<script src="Js/js.js"></script>
</body>
</html>
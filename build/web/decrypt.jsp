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
<h2>View Images & Encrypt</h2>

<br><br>
<%
    Connection connection = Dbconnection.getConnection();
    
    String user = session.getAttribute("username").toString();
                    
    String sql="SELECT * FROM decrypted where user = '"+user+"'";
    Statement stmt = connection.createStatement();
    ResultSet rs =stmt.executeQuery(sql);
    
  
      
       
       
   
%>


<center>
    
    <table>
              
        <tr>
            <th>Image Name</th>
        
            <th>Part 1</th>
            <th>Part 2</th>
            <th>Decrypt</th>
            
        </tr>
            
                
   <%
   while(rs.next()){
   %>
         <tr>
                
                <th><%=rs.getString(2)%></th>
              
                <th><img src="Gallery/<%=rs.getString(3)%>"></th>
                <th><img src="Gallery/<%=rs.getString(4)%>"></th>

                <th><a href="decrypt2.jsp?imgname=<%=rs.getString(2)%>&original=<%=rs.getString(2)%>&img1=<%=rs.getString(3)%>&img2=<%=rs.getString(4)%>">click</th>
                    
            </tr>
            
            <%
   }
            
            %>
    </table>
    
    
    
</center>





<script src="Js/js.js"></script>
</body>
</html>
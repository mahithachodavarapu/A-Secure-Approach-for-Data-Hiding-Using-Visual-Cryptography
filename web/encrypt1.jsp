
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="Action.Dbconnection"%>
<%@page import="Action.EncryptFile"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%
    String file = request.getParameter("img1");
    String file1 = request.getParameter("img2");
    String original = request.getParameter("original");
   
   String email = session.getAttribute("email").toString();
    String[] splita = original.split(".j");
          
    System.out.println("aaaaaaaaaa"+splita[0]);
    System.out.println("bbbbbbbbbb"+splita[1]);
      
    String a = splita[0]+0+".jpg";
    String b = splita[0]+1+".jpg";
 
    String user = session.getAttribute("username").toString();
    Connection connection = Dbconnection.getConnection();
  
    EncryptFile encryptFile = new EncryptFile();  
    String fileToEncrypt = file;
    String encryptedFile = user+"encryp1.jpg";
    String directoryPath = "C:\\Users\\ADMIN\\Documents\\NetBeansProjects\\Image Split Encryption and Decryption\\web\\Gallery\\";

    encryptFile.encrypt(directoryPath + fileToEncrypt,directoryPath + encryptedFile,email);
  
 


    EncryptFile encryptFile1 = new EncryptFile();  
    String fileToEncrypt1 = file1;
    String encryptedFile1 = user+"encryp2.jpg";
    String directoryPath1 =directoryPath;
  
    encryptFile1.encrypt(directoryPath1 + fileToEncrypt1,directoryPath1 + encryptedFile1,email);
  
  
    PreparedStatement ps=connection.prepareStatement("insert into decrypted values(?,?,?,?)");
            
            ps.setString(1,user);
            ps.setString(2,splita[0]);            
            ps.setString(3,encryptedFile);
            ps.setString(4,encryptedFile1);
           
                       
            int x=ps.executeUpdate();
            
          

   response.sendRedirect("viewimages.jsp?m1= success");     
        

%>
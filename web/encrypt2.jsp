
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


String email = session.getAttribute("email").toString();
    EncryptFile encryptFile1 = new EncryptFile();  
    String fileToEncrypt1 = "shiva1.jpg";
    String encryptedFile1 = "shivaencryp2.jpg";
    String directoryPath1 = "C:\\Users\\user\\Documents\\NetBeansProjects\\Image Splitting Project\\web\\Gallery\\";
     Connection connection = Dbconnection.getConnection();
    encryptFile1.encrypt(directoryPath1 + fileToEncrypt1,directoryPath1 + encryptedFile1,email);
  
  
   
            
            response.sendRedirect("viewimages.jsp?m1= success");     
        







%>
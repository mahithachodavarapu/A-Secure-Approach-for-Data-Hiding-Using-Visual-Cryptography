
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="Action.Dbconnection"%>
<%@page import="Action.decrypt"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%
    
    
    
    String file = request.getParameter("img1");
    System.out.println("imagename"+file);
    String file1 = request.getParameter("img2");
    String original = request.getParameter("imgname");
    System.out.println("original"+original);
   
   
   
   
   
   
   
    System.out.println("file"+file);
    String encryptedFile = "shivaencryp1.jpg";
    String encryptedFile1 = "shivaencryp2.jpg";
   
    String decryptedFile = "img0.jpg";
    String decryptedFile1 = "img1.jpg";
    String directoryPath = "C:\\Users\\ADMIN\\Documents\\NetBeansProjects\\Image Split Encryption and Decryption\\web\\Gallery\\";
   
   
    String storePath = "C:\\Users\\ADMIN\\Desktop\\Download\\";//Create a Folder named Download in Desktop and write its path here
   
    String skey = request.getParameter("pk1");
    String skey1 = request.getParameter("pk2");
    decrypt encryptFile = new decrypt();

    encryptFile.decrypt(directoryPath + encryptedFile,storePath + decryptedFile,skey);

    decrypt encryptFile1 = new decrypt();

    encryptFile1.decrypt(directoryPath + encryptedFile1,storePath + decryptedFile1,skey1);
    System.out.println("Decryption completed...");


   response.sendRedirect("merge.jsp?msg= success"); 


%>
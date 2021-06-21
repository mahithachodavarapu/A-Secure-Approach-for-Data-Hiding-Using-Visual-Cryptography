<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="Action.Dbconnection"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%

     Connection connection = Dbconnection.getConnection();
     
     
     
        String im = request.getParameter("image");
        String user = session.getAttribute("username").toString();
        System.out.println(im);
        
//        String filedetails = "ramesh.suresh";
        
        String[] splita = im.split(".j");
        
        
        
        
        
     
        
      
     System.out.println(splita[0]);
    System.out.println(splita[1]);
      

      
      String a = splita[0]+0+".jpg";
       String b = splita[0]+1+".jpg";
      
      

        File file = new File("C:\\Users\\ADMIN\\Desktop\\Upload\\"+im+""); // I have bear.jpg in my working directory
        FileInputStream fis = new FileInputStream(file);
        BufferedImage image = ImageIO.read(fis); //reading the image file

        int rows = 1; //You should decide the values for rows and cols variables
        int cols = 2;
        int chunks = rows * cols;

        int chunkWidth = image.getWidth() / cols; // determines the chunk width and height
        int chunkHeight = image.getHeight() / rows;
        int count = 0;
        BufferedImage imgs[] = new BufferedImage[chunks]; //Image array to hold image chunks
        for (int x = 0; x < rows; x++) {
            for (int y = 0; y < cols; y++) {
                //Initialize the image array with image chunks
                imgs[count] = new BufferedImage(chunkWidth, chunkHeight, image.getType());

                // draws the image chunk
                Graphics2D gr = imgs[count++].createGraphics();
                gr.drawImage(image, 0, 0, chunkWidth, chunkHeight, chunkWidth * y, chunkHeight * x, chunkWidth * y + chunkWidth, chunkHeight * x + chunkHeight, null);
                gr.dispose();
            }
        }
        System.out.println("Splitting done");

        //writing mini images into image files
        for (int i = 0; i < imgs.length; i++) {
            ImageIO.write(imgs[i], "jpg", new File("C:\\Users\\ADMIN\\Documents\\NetBeansProjects\\Image Split Encryption and Decryption\\web\\Gallery\\"+splita[0]+"" + i + ".jpg"));
        }
        
        
        
            PreparedStatement ps=connection.prepareStatement("insert into images values(?,?,?,?,?)");
            
            ps.setString(1,user);
            ps.setString(2,im);            
            ps.setString(3,a);
                      
            ps.setString(4,b);
            ps.setString(5,splita[0]);
           
                       
            int x=ps.executeUpdate();
        
       
        
        
        
        response.sendRedirect("upload.jsp?m1=success");
       
%>
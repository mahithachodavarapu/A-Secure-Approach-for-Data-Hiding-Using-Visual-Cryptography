<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.File"%>
<%
    
    
        int rows = 1;   //we assume the no. of rows and cols are known and each chunk has equal width and height
        int cols = 2;
        int chunks = 2;

        int chunkWidth, chunkHeight;
        int type;
        //fetching image files
        File[] imgFiles = new File[chunks];
        for (int i = 0; i < chunks; i++) {
            imgFiles[i] = new File("C:\\Users\\ADMIN\\Desktop\\Download\\img" + i + ".jpg");//Give Download folder path here upto C:\\Users\\ADMIN\\Desktop\\Download\\
        }

       //creating a bufferd image array from image files
        BufferedImage[] buffImages = new BufferedImage[chunks];
        for (int i = 0; i < chunks; i++) {
            buffImages[i] = ImageIO.read(imgFiles[i]);
        }
        type = buffImages[0].getType();
        chunkWidth = buffImages[0].getWidth();
        chunkHeight = buffImages[0].getHeight();

        //Initializing the final image
        BufferedImage finalImg = new BufferedImage(chunkWidth*cols, chunkHeight*rows, type);

        int num = 0;
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                finalImg.createGraphics().drawImage(buffImages[num], chunkWidth * j, chunkHeight * i, null);
                num++;
            }
        }
        System.out.println("Image concatenated.....");
        ImageIO.write(finalImg, "jpeg", new File("C:\\Users\\ADMIN\\Desktop\\Download\\finalImg.jpg"));//Give Download folder path here upto C:\\Users\\ADMIN\\Desktop\\Download\\

    
    
    
    
    
    
    
    
    
    
%>

<br><br>
<center><h1>Image Merge Success And Stored in Path</h1>
<h3><a href="index.html">Click Here To Go Back</a></h3></center>
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Image;

/**
 *
 * @author user


/**
 *
 * @author user
 */
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class Merge {
    
    
    public static void main(String[] args) {
	try {
    
    int rows = 2;   //we assume the no. of rows and cols are known and each chunk has equal width and height
        int cols = 2;
        int chunks = 4;

        int chunkWidth, chunkHeight;
        int type;
        //fetching image files
        File[] imgFiles = new File[chunks];
        for (int i = 0; i < chunks; i++) {
            imgFiles[i] = new File("C:\\Users\\user\\Desktop\\Screens\\img" + i + ".jpg");
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
        ImageIO.write(finalImg, "jpeg", new File("C:\\Users\\user\\Desktop\\Screens\\finalImg.jpg"));

    
    
    
    
    
    
    
        }  
    
    
    catch (IOException e) {
		e.printStackTrace();
	}
	
	}
}

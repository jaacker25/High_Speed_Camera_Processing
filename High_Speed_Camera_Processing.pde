import com.github.sarxos.webcam.*;
import com.github.sarxos.webcam.ds.buildin.*;
import com.github.sarxos.webcam.ds.buildin.natives.*;
import com.github.sarxos.webcam.ds.cgt.*;
import com.github.sarxos.webcam.ds.dummy.*;
import com.github.sarxos.webcam.log.*;
import com.github.sarxos.webcam.util.*;
import com.github.sarxos.webcam.util.jh.*;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
//import com.github.sarxos.webcam.WebcamPanel.*;

import java.util.List;

void setup(){
  size(640,360);
  imageMode(CENTER);
  //Webcam webcam = Webcam.getWebcamByName("RYS HFR USB2.0 Camera 2"); "Integrated Camera 1"
 // Webcam webcam = Webcam.registerDrive();
 // webcam.open();
for(Webcam webcam:Webcam.getWebcams()){
  if(webcam.getName().equalsIgnoreCase("RYS HFR USB2.0 Camera 2")){
//  break;
 webcam.open(); 
 
 delay(1000);
 BufferedImage cap = webcam.getImage();
 PImage screen=new PImage(cap.getWidth(),cap.getHeight(),PConstants.ARGB);
 cap.getRGB(0,0,screen.width,screen.height,screen.pixels,0,screen.width);
 screen.updatePixels();
 image(screen,width/2,height/2);
//ImageIO.write(image,"PNG", new File("test.png"));

 
}
}

  
  
  
/*for(Webcam webcam:Webcam.getWebcams()){
  println(webcam.getName());
}*/
}
//Webcam webcam;


void keyPressed(){
if(key=='p'){
/*
  BufferedImage image = webcam.getImage();
imageIO.write(image,"PNG", new File("test.png"));
*/
}
}

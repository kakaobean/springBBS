package com.ktds.qatar.controller;


import java.awt.BorderLayout;
import java.awt.Image;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
public class imgTest {

	public static void main(String[] args) {
		Image image1 = null;
		Image image2 = null;
		Image image3 = null;
	    try {
	        // 파일로부터 이미지 읽기
	        File sourceimage = new File("C:/file/Jellyfish.jpg");
	        image1 = ImageIO.read(sourceimage);
	    
	        // InputStream으로부터 이미지 읽기
	        InputStream is = new BufferedInputStream(
	            new FileInputStream("C:/file/Jellyfish.jpg"));
	        image2 = ImageIO.read(is);
	    } catch (IOException e) {
	    }
	    
	    // Use a label to display the image
	    JFrame frame = new JFrame();
	    
	    JLabel label1 = new JLabel(new ImageIcon(image1));
	    JLabel label2 = new JLabel(new ImageIcon(image2));
	    
	    frame.getContentPane().add(label1, BorderLayout.CENTER);
	    frame.getContentPane().add(label2, BorderLayout.NORTH);
	    
	    frame.pack();
	    frame.setVisible(true);
	}
}

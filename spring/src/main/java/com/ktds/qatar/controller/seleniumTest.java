package com.ktds.qatar.controller;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class seleniumTest {
	public static WebDriver driver;
	public static StringBuffer verificationErrors = new StringBuffer();
	public static String CHROMEDRIVER_FILE_PATH;
	
	public static void main(String[] args) {
		
	JSONObject jsonOb = new JSONObject();
	JSONArray jsonAr = new JSONArray();
	Document doc = null;
	String d3 = null;
	Elements tr3 = null;
	WebElement wb1 = null; 
		// 크롬 드라이버 파일 경로
		CHROMEDRIVER_FILE_PATH = "C:\\Users\\youngbin\\Downloads\\chromedriver\\chromedriver.exe";
		System.setProperty("webdriver.chrome.driver", CHROMEDRIVER_FILE_PATH);
		driver = new ChromeDriver();
		String url = "http://localhost:8080/board/list";
		
		driver.get(url);
		
		wb1 =  driver.findElement(By.id("10"));
		wb1.click();
		
		d3 = driver.getPageSource();
		doc = Jsoup.parse(d3);
		tr3 = doc.select("#trTest");
		System.out.println(tr3);
		 
	}
}


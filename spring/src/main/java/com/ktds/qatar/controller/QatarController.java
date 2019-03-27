package com.ktds.qatar.controller;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class QatarController {
	
	public static void main(String[] args) {
//		try {
//			Connection.Response response = Jsoup.connect("http://careers.qatarairways.com/qatarairways/vacancysearch.aspx")
//					.method(Connection.Method.GET)
//					.execute();
//			Document document = response.parse();
//			String html = document.html();
//			String text = document.text();
//			System.out.println(html);
//		}catch(IOException e) {
//			e.printStackTrace();
//		}
//		
		Document doc = null;
		try {
//			doc = Jsoup.connect("http://careers.qatarairways.com/qatarairways/vacancysearch.aspx").get();
			doc = Jsoup.connect("http://localhost:8080/board/list/2").get();
		} catch (IOException e) {
			e.printStackTrace();
		}
//		Elements el = doc.select("section tr");
		Elements el = doc.select(".ah_item .ah_k");
		
		
		Element e2 = doc.select(".ah_l").get(0);
		Elements e3 = e2.select("li");
//		System.out.println(e3.get(1).text());     여기랑  밑에랑 비교
//		System.out.println(e3.get(3).text());
		int a = 1;
		for(Element e4 : e3) {
			Elements e5 = e4.select(".ah_k");
//			System.out.println(e5+" :: " +a);
//			System.out.println("e3::"+e3);
//			System.out.println("e4::"+e4);
			a++;
		}
//		System.out.println(e3);
		
	}
}

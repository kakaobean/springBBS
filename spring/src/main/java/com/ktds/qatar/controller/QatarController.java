package com.ktds.qatar.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class QatarController {
	
	JSONObject jsonOb = new JSONObject();
	JSONArray jsonAr = new JSONArray();
	Document doc = null;
	
	static QatarController qatar = new QatarController();
	
	public static void main(String[] args) {
		
		qatar.parser(); 
//		qatar.crossCheck();
		
	}


	public void crossCheck() {
		Element td =null;
		String[] aa;
		String[] bb = {"dd","44","4"};
		List cc = new ArrayList<String>();
		qatar.jsoup();
		Elements tr = doc.select("table tr");
		for(int i = 1; i<tr.size(); i++) {
			td = tr.get(i);
			Elements tdData = td.select("td");
			aa = tdData.get(0).text().split(" -");
//			System.out.println(tdData.get(0).text().split("-"));
			cc.add(aa[0]);
			System.out.println(aa[0]);
		}
		System.out.println(cc);
	}
	
	// job link, job function parsing,  return Type : json
	public void parser() { 
		qatar.jsoup();
		Elements tr = doc.select("table tr");
		System.out.println(tr);
		for(int i = 1; i<tr.size(); i++) {
			Element td = tr.get(i);
			if(td != null) { 
				jsonOb = new JSONObject();
				Elements tdData = td.select("td"); 
				Elements href = td.select("td a");  
				jsonOb.put("Job link", href.first().attr("abs:href"));
				jsonOb.put("Job function", tdData.get(2).text());
				jsonAr.add(jsonOb);
//				System.out.println(jsonOb);    
			}
		}
//		System.out.println(jsonAr);    // 추후에 front-end 로 내려서 Job function 이 Cabin Crew 인것만 추출
	}
	 
	public void jsoup() {
		try {
			String url = "http://localhost:8080/board/list";
//			String url = "http://localhost:8080/board/ajaxTest";
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

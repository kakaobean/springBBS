package com.ktds.chart.vo;

public class ChartVO {
	private String upNm;
	private String upCnt;
	private int baseYm;     // 프론트에선 String 으로 넘기는데 백단에선 int로 처리가 가능(쿼리가 실행되는데 오라클이라 그런가?)
	
	public String getUpNm() {
		return upNm;
	}
	public void setUpNm(String upNm) {
		this.upNm = upNm;
	}
	public String getUpCnt() {
		return upCnt;
	}
	public void setUpCnt(String upCnt) {
		this.upCnt = upCnt;
	}
	public int getBaseYm() {
		return baseYm;
	}
	public void setBaseYm(int baseYm) {
		this.baseYm = baseYm;
	}
	
	
}

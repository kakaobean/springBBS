package com.ktds.board.vo;

public class BoardVO {
	private String title;
	private String body;
	private String writeDate;
	private String viewCnt;
	private String rownum;

	public String getRownum() {
		return rownum;
	}

	public void setRownum(String rownum) {
		this.rownum = rownum;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	public String getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(String viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

}

package com.test.test3.dto;

public class PartyDTO {
	
	String P_CODE;
	String P_NAME;
	String P_INDATE;
	String P_READER;
	String P_TEL;
	
	public String getP_CODE() {
		return P_CODE;
	}
	public void setP_CODE(String p_CODE) {
		P_CODE = p_CODE;
	}
	public String getP_NAME() {
		return P_NAME;
	}
	public void setP_NAME(String p_NAME) {
		P_NAME = p_NAME;
	}
	public String getP_INDATE() {
		return P_INDATE;
	}
	public void setP_INDATE(String p_INDATE) {
		P_INDATE = p_INDATE;
	}
	public String getP_READER() {
		return P_READER;
	}
	public void setP_READER(String p_READER) {
		P_READER = p_READER;
	}
	public String getP_TEL() {
		return P_TEL;
	}
	public void setP_TEL(String p_TEL) {
		P_TEL = p_TEL;
	}
	@Override
	public String toString() {
		return "PartyDTO [P_CODE=" + P_CODE + ", P_NAME=" + P_NAME + ", P_INDATE=" + P_INDATE + ", P_READER=" + P_READER
				+ ", P_TEL=" + P_TEL + "]";
	}
}

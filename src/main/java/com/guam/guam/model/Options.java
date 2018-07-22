package com.guam.guam.model;

import org.springframework.stereotype.Service;

@Service
public class Options {
	private int opIdx;
	private String opBig;
	private String opMid;
	private String opSmall;
	private String opAdult;
	private String opKid;
	private String opBaby;
	public int getOpIdx() {
		return opIdx;
	}
	public void setOpIdx(int opIdx) {
		this.opIdx = opIdx;
	}
	public String getOpBig() {
		return opBig;
	}
	public void setOpBig(String opBig) {
		this.opBig = opBig;
	}
	public String getOpMid() {
		return opMid;
	}
	public void setOpMid(String opMid) {
		this.opMid = opMid;
	}
	public String getOpSmall() {
		return opSmall;
	}
	public void setOpSmall(String opSmall) {
		this.opSmall = opSmall;
	}
	public String getOpAdult() {
		return opAdult;
	}
	public void setOpAdult(String opAdult) {
		this.opAdult = opAdult;
	}
	public String getOpKid() {
		return opKid;
	}
	public void setOpKid(String opKid) {
		this.opKid = opKid;
	}
	public String getOpBaby() {
		return opBaby;
	}
	public void setOpBaby(String opBaby) {
		this.opBaby = opBaby;
	}
	
	
}

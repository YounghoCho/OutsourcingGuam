package com.guam.guam.model;

import org.springframework.stereotype.Service;

@Service
public class Guam {
	private String korName;
	private String engName;
	private String phone;
	private String email;
	
    private String bigMidCategory;
    private String smallEtcCategory;
    private String reserveDateAndTime;
    private String reservePeople;
    private String preCharge;
    private String localCharge;

	private String currentTime;
	
	public String getKorName() {
		return korName;
	}
	public void setKorName(String korName) {
		this.korName = korName;
	}
	public String getEngName() {
		return engName;
	}
	public void setEngName(String engName) {
		this.engName = engName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getBigMidCategory() {
		return bigMidCategory;
	}
	public void setBigMidCategory(String bigMidCategory) {
		this.bigMidCategory = bigMidCategory;
	}
	public String getSmallEtcCategory() {
		return smallEtcCategory;
	}
	public void setSmallEtcCategory(String smallEtcCategory) {
		this.smallEtcCategory = smallEtcCategory;
	}
	public String getReserveDateAndTime() {
		return reserveDateAndTime;
	}
	public void setReserveDateAndTime(String reserveDateAndTime) {
		this.reserveDateAndTime = reserveDateAndTime;
	}
	public String getReservePeople() {
		return reservePeople;
	}
	public void setReservePeople(String reservePeople) {
		this.reservePeople = reservePeople;
	}
	public String getPreCharge() {
		return preCharge;
	}
	public void setPreCharge(String preCharge) {
		this.preCharge = preCharge;
	}
	public String getLocalCharge() {
		return localCharge;
	}
	public void setLocalCharge(String localCharge) {
		this.localCharge = localCharge;
	}
	public String getCurrentTime() {
		return currentTime;
	}
	public void setCurrentTime(String currentTime) {
		this.currentTime = currentTime;
	}
	
}

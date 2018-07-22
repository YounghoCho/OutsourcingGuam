package com.guam.guam.model;

import org.springframework.stereotype.Service;

@Service
public class Exchange {
	private int rate;

	public int getExchange() {
		return rate;
	}

	public void setExchange(int rate) {
		this.rate = rate;
	}
	
}

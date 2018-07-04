package com.guam.guam.bo;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.guam.guam.model.Guam;

@Service
public interface GuamBO {
	public List<Guam> getGuamData();

	public void inserReserveData(Map<String, Object> map);
}

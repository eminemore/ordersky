package com.travelsky.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.travelsky.domain.Restaurant;
import com.travelsky.service.RestService;

public class RestAction {
	@Autowired
	private RestService restService;
	private Restaurant rest;
	private List<Restaurant> restList;

	public String execute() throws Exception {
		return null;
	}
}

package com.yesool.service;

public class GuestService {
	private static GuestService instance;
	public static GuestService getInstance(){
		if(instance==null){
			instance = new GuestService();
		}
		return instance;
	}
	private GuestService(){}
}

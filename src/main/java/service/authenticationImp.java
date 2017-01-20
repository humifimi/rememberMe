package service;

import model.user;

public class authenticationImp implements authentication{
	
	@Override
	public boolean authentication(user user) {
		return ("humi".equals(user.getUsername()) && "123".equals(user.getPassword()))? true:false;
	}
}

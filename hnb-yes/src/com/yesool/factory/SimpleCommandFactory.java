package com.yesool.factory;

public class SimpleCommandFactory {
	
	Command command;
	String s1,s2,s3,s4;
	
	public Command createCommand(String p1,String p2,String p3,String p4,String p5){
		
		
		if(p1.equals("common")){
			command = new CommonCommand(p2,p3,p4,p5);
		}else if(p1.equals("admin")){
			command = new AdminCommand(p2,p3,p4,p5);
		}else if(p1.equals("guest")){
			command = new GuestCommand(p2,p3,p4,p5);
		}else if(p1.equals("item")){
			command = new ItemCommand(p2,p3,p4,p5);
		}else if(p1.equals("board")){
			command = new BoardCommand(p2,p3,p4,p5);
		}else if(p1.equals("about")){
			command = new AboutCommand(p2,p3,p4,p5);
		}
		
		return command;
	}
}

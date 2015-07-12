package com.yesool.factory;

import java.util.ArrayList;
import java.util.List;



public class BoardCommand extends Command{
	
	
	
	
	public BoardCommand(String s1, String s2, String s3, String s4) {
		super(s1, s2, s3, s4);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void execute() {
		/*if(msg.equals("list")){
			getList(command);
		}*/
	}

	public List getList(Command command){
		List list = new ArrayList();
		return list;
	}
	
}

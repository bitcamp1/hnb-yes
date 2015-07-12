package com.yesool.factory;

import java.util.Iterator;
import java.util.Vector;


public abstract class Command implements Orderable{
	
	public final int PAGESIZE = 10;
	private int pageNO,start,end;
	private String keyword,keyField,command,view;
	
	public Command(String s1,String s2,String s3,String s4){
		this.command = s1;
		this.pageNO = Integer.parseInt(s2);
		this.keyField = s3;
		this.keyword = s4;
	}
	
	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public void setCommand(String command){
		this.command = command;
	}
	public String getCommand(){
		return command;
	}
	public int getPageNO() {
		return pageNO;
	}
	public void setPageNO(int pageNO){
		this.pageNO = pageNO;
	}
	public String getKeyword() {
		return keyword;
	}
	public String getKeyField() {
		return keyField;
	}
	
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}
	public int getStart() {
		return start;
	}
	public int getEnd() {
		return end;
	}
	public void setStart(int pageNO, int PAGESIZE) {
		this.start = (pageNO-1)*PAGESIZE+1;
	}
	public void setEnd(int pageNO) {
		this.end = pageNO*PAGESIZE;
	}
	@Override
	public void execute() {
		// TODO Auto-generated method stub
		
	}
}

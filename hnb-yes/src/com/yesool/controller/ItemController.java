package com.yesool.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.yesool.dao.ItemDao;
import com.yesool.factory.Command;
import com.yesool.factory.SimpleCommandFactory;
import com.yesool.model.ItemVo;

/**
 * Servlet implementation class ItemController
 */
@WebServlet("/control/item.do")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SimpleCommandFactory factory = new SimpleCommandFactory();   
	String  view;
	Command command ;    
	ItemVo ivo = new ItemVo();
   
	public void init(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p0 = request.getServletPath().split("/")[2];
		String p1 = p0.substring(0,p0.indexOf("."));
		String p2 = request.getParameter("command");
		String p3 = request.getParameter("pageNO");
		String p4 = request.getParameter("keyField");
		String p5 = request.getParameter("keyword");
		if(p2 == null){ p2 = "main";}
		if(p3 == null){	p3 = "1"; }
		if(p4 == null){ p4 = "NONE";}
		if(p5 == null){ p5 = "NONE";}
		System.out.println("p1 :"+ p1);
		System.out.println("command :"+ p2);
		System.out.println("p3 :"+ p3);
		System.out.println("p4 :"+ p4);
		System.out.println("p5 :"+ p5);
		command = factory.createCommand(p1,p2,p3,p4,p5);
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		init(request,response);
		switch (command.getCommand()) {
		case "main": 
			request.setAttribute("result", "reg_item" );
			process(request,response,"main");
			break;
	
		case "list": 
			request.setAttribute("totCount", ItemDao.getInstance().getTotalCount());
			request.setAttribute("sojuList", ItemDao.getInstance().getSojuList());
			request.setAttribute("beerList", ItemDao.getInstance().getBeerList());
			request.setAttribute("result", "list");
			process(request,response,"main");break;
	
		case "imglist" : 
			request.setAttribute("result", "imglist");
			process(request, response, "main");
			break;
		case "detail":
			request.setAttribute("item", ItemDao.getInstance().getOneItemByID(command));
			request.setAttribute("result", "detail");
			process(request, response, "main");
			break;
		case "soju":
			request.setAttribute("result", "soju");
			process(request, response, "main");
			break;
		
		default:
			break;
		}
	}
	private void process(HttpServletRequest request, HttpServletResponse response,String view) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("/views/item/"+view+".jsp");
		dis.forward(request, response);
	}
	
}

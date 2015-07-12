package com.yesool.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yesool.dao.ItemDao;
import com.yesool.factory.Command;
import com.yesool.factory.SimpleCommandFactory;

/**
 * Servlet implementation class CommonController
 */
@WebServlet("/control/admin.do")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SimpleCommandFactory factory = new SimpleCommandFactory();   
	String  view;
	Command command ;    
   
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
		System.out.println("param1 :"+ p2);
		System.out.println("param2 :"+ p3);
		System.out.println("param3 :"+ p4);
		System.out.println("param4 :"+ p5);
		command = factory.createCommand(p1,p2,p3,p4,p5);
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		init(request,response);
		switch (command.getCommand()) {
		case "main": 
			process(request,response,"main");
			break;
		case "mg_board": 
			request.setAttribute("result", "mg_board");
			process(request,response,"main");break;
		case "mg_member": 
			request.setAttribute("result", "mg_member");
			process(request,response,"main");break;
		case "mg_item": 
			if(command.getKeyword().equals("NONE")){
				command.setStart(command.getPageNO(), command.PAGESIZE);
				command.setEnd(command.getPageNO());
				request.setAttribute("result", "mg_item");
				List list = ItemDao.getInstance().getItemList();
				request.setAttribute("list", ItemDao.getInstance().getItemList());
				request.setAttribute("totCount",ItemDao.getInstance().getTotalCount() );
			}else{
				request.setAttribute("result", "mg_item");
				request.setAttribute("list", ItemDao.getInstance().getItemSearch(command));
				request.setAttribute("totCount", ItemDao.getInstance().getSearchCount(command));
			}
			request.setAttribute("pageNO", command.getPageNO());
			process(request,response,"main");
			break;
		case "reg_item":
			request.setAttribute("result", "reg_item");
			process(request, response, "main");
			break;
		default:
			break;
		}
	}
	private void process(HttpServletRequest request, HttpServletResponse response,String view) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("/views/admin/"+view+".jsp");
		dis.forward(request, response);
	}
}

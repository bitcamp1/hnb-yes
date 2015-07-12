package com.yesool.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yesool.dao.ItemDao;
import com.yesool.factory.Command;
import com.yesool.factory.SimpleCommandFactory;
import com.yesool.model.ItemVo;

@WebServlet("/control/upload.do")
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SimpleCommandFactory factory = new SimpleCommandFactory();   
	String  view;
	Command command ;  
    ItemVo ivo = new ItemVo();   
	
  
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String saveDirectory = request.getServletContext().getRealPath("/");
		MultipartRequest mul = new MultipartRequest(request, 
				saveDirectory, 
				5*1024*1024, "utf-8" ,new DefaultFileRenamePolicy());

		String imgName = mul.getFilesystemName("imgName");
		if(imgName != null){
			ivo.setImgName(imgName);
		}
		
		/*ItemDao.getInstance().uploadImg(ivo);*/
		String itemName = mul.getParameter("itemName");
		if(itemName != null){
			ivo.setItemName(itemName);
		}
		String sPrice = mul.getParameter("price");
		if(sPrice !=null){
			
			int price = Integer.parseInt(sPrice);
			ivo.setPrice(price);
		}
		String pdDate = mul.getParameter("pdDate");
		if(pdDate !=null){
			
			ivo.setPdDate(pdDate);
		}
		String sCapa = mul.getParameter("capa");
		if(sCapa != null){
			
			int capa = Integer.parseInt(sCapa);
			ivo.setCapa(capa);
		}
		
		String description = mul.getParameter("description");
		if(description != null){
			ivo.setDescription(description);
		}
		String pdOrg = mul.getParameter("pdOrg");
		if(pdOrg != null){
			
			ivo.setPdOrg(pdOrg);
		}
		String saleType = mul.getParameter("saleType");
		if(saleType != null){
			
			ivo.setSaleType(saleType);
		}
	
		String cateName = mul.getParameter("cateName");
		if(cateName != null){
			
			ivo.setCateName(cateName);
		}
		String bigImg = mul.getFilesystemName("bigImg");
		if(bigImg != null){
			ivo.setBigImg(bigImg);
		}
		ItemDao.getInstance().insertItem(ivo);
		
		request.setAttribute("list", ItemDao.getInstance().getItemList());
		request.setAttribute("result", "reg_item");
		process(request, response, "main");
	}
	private void process(HttpServletRequest request, HttpServletResponse response,String view) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("/views/admin/main.jsp");
		dis.forward(request, response);
	}
	public void multiPartUpload (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String saveDirectory = request.getServletContext().getRealPath("saveDirectory");
		try {
			MultipartRequest mul = new MultipartRequest(request, 
					saveDirectory, 5 * 1024 * 1024, "UTF-8", 
					new DefaultFileRenamePolicy());
			Enumeration<?> files = mul.getFileNames();
			while (files.hasMoreElements()) {
				String file = (String) files.nextElement();
				String fileName = mul.getFilesystemName(file);
				String oFileName = mul.getOriginalFileName(file);
				request.setAttribute("fileName", fileName);
				request.setAttribute("oFileName", oFileName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

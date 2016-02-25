package com.citation.Action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

import com.citation.FormBean.WebpageFormBean;

public class GetLinksAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
       String path="";
       int searchIndex=0;
       int searchCount = 0;
       HttpSession session=request.getSession();
		
		try{
		
		
		String target=(String)session.getAttribute("page");
		
		String searchFor = "</a>";
		
		
		
		
		
		
		ArrayList<WebpageFormBean> awb=new ArrayList<WebpageFormBean>();
		
		
		
		
		String testHtml = target;
		
		String[] tds = StringUtils.substringsBetween(testHtml, "<hai>", "</hai>");
		  
		for (String td : tds) {
			System.out.println("data value:" + td);
			
			
			
			WebpageFormBean wb=new WebpageFormBean();
			
			String input = td, extracted;

			extracted = input.substring(input.indexOf("/"),input.indexOf(">"));
		
			
			System.out.println("=================="+extracted);
			
			wb.setWebname(td);
			wb.setCount(searchCount);
			wb.setExtracted(extracted);
			
			awb.add(wb);
			
			request.setAttribute("words", awb);
			request.setAttribute("count", searchCount);
		}
		
		
		
		
		path="./ViewLinks.jsp";
		
		
		
		
	}catch (Exception e) {
	e.printStackTrace();
	path="./userhome.jsp";
	request.setAttribute("status", "No links r available");
	
	}
	
	
	RequestDispatcher rd=request.getRequestDispatcher(path);
	
	rd.forward(request, response);
	
	}
}

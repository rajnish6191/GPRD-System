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

public class GetLinksAction1 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
       String path="";
       int searchIndex=0;
       int searchCount = 0;
       int count=0;
       HttpSession session=request.getSession();
		try{
			String target=(String)session.getAttribute("srt");
			
			System.out.println("ssssssssss"+target);
			
			
			String searchFor = "</a>";
			
			ArrayList<WebpageFormBean> awb=new ArrayList<WebpageFormBean>();
			
			
			
			
			String testHtml = target;
			
			
		    String[] tdss = StringUtils.substringsBetween(testHtml, "<b>", "</b>");
		  
		   
		
		
		
		String ss=null;
		String sss=null;
		String sss1=null;
		
		for (String td1 : tdss) {
			
			
			System.out.println("data12345 value:" + td1);
			ss=td1;
			sss=sss+" "+ss;
			sss1=sss1+" , "+ss;
		}
		sss=sss.substring(5);
		sss1=sss1.substring(6);
		System.out.println("sssssssssst========:" + sss);
		request.setAttribute("similar", sss);
		request.setAttribute("similar1", sss1);
		request.setAttribute("count", count);
		System.out.println("searchCount========:" + count);
		
		
		
		
		path="./search4.jsp";
		
		
		
		
	}catch (Exception e) {
	e.printStackTrace();
	path="./userhome.jsp";
	request.setAttribute("status", "No links r available");
	
	}
	
	
	RequestDispatcher rd=request.getRequestDispatcher(path);
	
	rd.forward(request, response);
	
	}
}

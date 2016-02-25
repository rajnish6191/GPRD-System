package com.citation.Action;

import java.io.IOException;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.citation.Dao.DataDao;
import com.citation.FormBean.DataFormBean;

public class UploadCategoryAction extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
         doPost(request, response);
         
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String path="";
		RequestDispatcher rd=null;
        boolean flag=false;
		DataFormBean  wf=new DataFormBean();
	    Map map=request.getParameterMap();
		
		try{
			BeanUtils.populate(wf, map);
			
		}catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try{
			HttpSession session=request.getSession();
			
			String login=(String)session.getAttribute("loginuser");
			
			String categoryname=request.getParameter("categoryname");
			wf.setCategoryname(categoryname);
			
		  
		flag= new DataDao().uploadCategoryData(wf);
		
		if(flag){
			request.setAttribute("status", "Data Uploded in to Database successfully");
			path="./UploadCategory.jsp";
			
		}
		else{
			request.setAttribute("status", "Image data Uploading failed");
			path="./UploadCategory.jsp";
			
		}
		}catch (NullPointerException e) {
		e.printStackTrace();
		request.setAttribute("status", "Server busy plz try After some time");
		path="./UploadCategory.jsp";
	}
        rd=request.getRequestDispatcher(path);
        rd.forward(request, response);
		
		
	}

}

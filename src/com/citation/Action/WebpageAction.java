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


import com.citation.Dao.WebpageDAO;
import com.citation.FormBean.WebFormBean;

public class WebpageAction extends HttpServlet {

	
	   public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	     public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path="";
		RequestDispatcher rd=null;
        boolean flag=false;
		WebFormBean  wf=new WebFormBean();
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
			
			wf.setLogin(login);
		flag= new WebpageDAO().uploadWebpage(wf);
		
		if(flag){
			request.setAttribute("status", "webpageuploaded successfully");
			path="./Home.jsp";
			
		}
		else{
			request.setAttribute("status", "Webpage Uploading failed");
			path="./Home.jsp";
			
		}
		}catch (NullPointerException e) {
		e.printStackTrace();
		request.setAttribute("status", "Exception raised plz try later");
		path="./Home.jsp";
	}
        rd=request.getRequestDispatcher(path);
        rd.forward(request, response);
	}

}

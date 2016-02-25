package com.citation.Action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.citation.Dao.DataDao;
import com.citation.FormBean.DataFormBean;

public class RetriveCategoryinfo extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	String path=null;

		response.setContentType("text/html");
		DataDao d=new DataDao();
		DataFormBean df= new DataFormBean();
		ArrayList<DataFormBean> v=null;
		try {
			 v=d.retreveCategory(df);
			 System.out.println("Vector"+v);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		//System.out.println("size"+v.size());
		
		if(v!=null)
		{
		request.setAttribute("v", v);
			path="./UploadData.jsp";
		}
		
		else 
			
		{
			path="./Uploaddata.jsp";
			System.out.println(" not retreved");
		}
	
	RequestDispatcher rd=request.getRequestDispatcher(path);
	rd.forward(request, response);
	}

}

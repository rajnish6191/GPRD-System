package com.citation.Action;
import java.io.IOException;
import java.util.ArrayList;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Vector;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.citation.Dao.RegisterDAO;
import com.citation.Dao.DataDao;
import com.citation.FormBean.DataFormBean;


public class DataAction extends HttpServlet {

	
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String path="";
		
		 
		HttpSession session=request.getSession();
		DataFormBean dataFormBean=new DataFormBean();
		
		
		
		
		try
		{
			

			
			
			
			int dataid=Integer.parseInt(request.getParameter("dataid"));
			   
			String jsp1= new DataDao().getlink(dataid);
			
		System.out.println("JSPPPPPPP=="+jsp1);
			  
                if(!jsp1.isEmpty())
                {
				
				request.setAttribute("status", "Here is u r Search result");
				System.out.println("JSPPPPPPP=="+jsp1);
				path="./"+jsp1;
				System.out.println("PPPPPPATH=="+path);
			    }
				
                else
                {
                	request.setAttribute("status", "Here is u r Search result");
    				path="./search1.jsp";
                }  
			  
			 
				
			
		    }
			  
		  catch (Exception e) {
			e.printStackTrace();
			path="userhome.jsp";
			request.setAttribute("status","HI Jain");
		}

		  RequestDispatcher rd=request.getRequestDispatcher(path);
			rd.forward(request,response);	
	}
}

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

public class GetDataAction2 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "";

		HttpSession session = request.getSession();
		DataFormBean dataFormBean = new DataFormBean();

		try {

			Vector<Vector> data = (Vector<Vector>) request.getAttribute("vv");
			System.out.println("dataaaaaaaaaaaaaaaa"
					+ ((Vector<Vector>) request.getAttribute("vv")).size());
			System.out.println("dataaaaaaaaaaaaaaaa"
					+ ((Vector<Vector>) request.getAttribute("vv")));
			request.setAttribute("vv", data);
			path = "./search4.jsp";
			request.setAttribute("status", "Here is u r Search result");

		}

		catch (Exception e) {
			e.printStackTrace();
			path = "userhome.jsp";
			request.setAttribute("status", "HI Jain");
		}

		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}
}

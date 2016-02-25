package com.citation.Action;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.JTree;
import javax.swing.ScrollPaneConstants;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.TreePath;

public class TreeAction extends HttpServlet {

	
	private static final long serialVersionUID = -2941564269120432640L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	   JFrame frame = new JFrame("SmartSearching");
		Container c = frame.getContentPane();
		c.setLayout( new BorderLayout() );

		
		HttpSession httpSession=request.getSession();
		
		String sname=(String)httpSession.getAttribute("sname");
		HashMap map=(HashMap) httpSession.getAttribute("hm2");
		
		
		
		//Create top node of a tree
		

		final DefaultMutableTreeNode top = new DefaultMutableTreeNode(sname);
		
		  Vector v1= (Vector) httpSession.getAttribute("v4");		

		
		Iterator iterator = map.keySet().iterator();  
		   
		while (iterator.hasNext()) {  
		   String key1 = iterator.next().toString(); 
		
		 //Create a subtree for query
			final DefaultMutableTreeNode key11 = new DefaultMutableTreeNode(key1);
			top.add(key11);
		
		  for(int y=0;y<v1.size();y++){
			    
			  
			  String string = v1.get(y).toString();

			  
			  System.out.println("string value is "+string);
			  
			  boolean  b = string.endsWith(key1);  // true

			   System.out.println("bolean value is"+b);
			   
			   
			   
			  if(b==true){
				  			  
				  final DefaultMutableTreeNode b1 = new DefaultMutableTreeNode(string);
					key11.add(b1);
				  
			  }
	  }
		
		}
       		//Creating tree
		final JTree tree = new JTree(top);

		int v = ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED;
		int h = ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED;
		final JScrollPane jsp = new JScrollPane(tree,v,h);
		c.add(jsp,BorderLayout.CENTER );

		final JTextField text = new JTextField("",20);
		c.add(text,BorderLayout.SOUTH);

		tree.addMouseListener( new MouseAdapter()
		{
		public void mouseClicked( MouseEvent me)
		{
		TreePath tp = tree.getPathForLocation(me.getX(),me.getY() );
		if( tp != null )
		text.setText(tp.toString() );
		else
		text.setText("");
		}
		}
		);

		frame.setSize(300,200);
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
     
		
		}
		
}

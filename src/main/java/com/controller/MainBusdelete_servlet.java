package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.model.bus_model;

/**
 * Servlet implementation class MainBusdelete_servlet
 */
@WebServlet("/MainBusdelete_servlet")
public class MainBusdelete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainBusdelete_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		int id=Integer.parseInt(request.getParameter("id"));
			
		try {
			
			bus_model b= new bus_model(connection.getconnection());
			boolean b1;
			b1=b.delete_Mainbusdetails(id);
			if(b1)
			{
				response.sendRedirect("MainBus_display.jsp");
			}else
			{
				response.sendRedirect("error.jsp");
			}
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

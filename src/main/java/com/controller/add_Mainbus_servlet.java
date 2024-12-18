package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.BusAdd_entity;
import com.model.bus_model;

/**
 * Servlet implementation class add_Mainbus_servlet
 */
@WebServlet("/add_Mainbus_servlet")
public class add_Mainbus_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_Mainbus_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Busno=request.getParameter("bus_no");
		System.out.println(Busno);
		String Busname=request.getParameter("bus_name");
		System.out.println(Busname);
		
		String seats=request.getParameter("seats");
		
		BusAdd_entity b=new BusAdd_entity();
		b.setMainBusNo(Busno);
		b.setMainBusName(Busname);
		b.setSeats(seats);
		
		bus_model bb=new bus_model(connection.getconnection());
		try {
			boolean b1;
			b1=bb.insert_Mainbusdetails2(b);
			if(b1)
			{
				response.sendRedirect("admin_addform.jsp");
			}else
			{
				response.sendRedirect("error.jsp");
			}
			
			
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
	}

}

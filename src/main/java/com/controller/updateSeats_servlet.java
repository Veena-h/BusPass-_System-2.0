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
 * Servlet implementation class updateSeats_servlet
 */
@WebServlet("/updateSeats_servlet")
public class updateSeats_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateSeats_servlet() {
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
		int id=Integer.parseInt(request.getParameter("id"));
		String bus_no=request.getParameter("bus_no");
		String bus_name=request.getParameter("bus_name");
		String seats=request.getParameter("Aseats");
		
		
		
		BusAdd_entity b= new BusAdd_entity();
		b.setMainBusNo(bus_no);
		b.setMainBusName(bus_name);
		b.setSeats(seats);
		b.setMainBusId(id);
		
		bus_model bb=new bus_model(connection.getconnection());
		try {
			
			boolean boo=bb.updateSeats(b);
			if(boo)
			{
				response.sendRedirect("MainBus_display.jsp");
			}else
			{
				response.sendRedirect("error.jsp");

			}
				
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}

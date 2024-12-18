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
 * Servlet implementation class add_bus_servlet
 */
@WebServlet("/add_bus_servlet")
public class add_bus_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_bus_servlet() {
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
		String stop_no=request.getParameter("stop_no");
		String stop_name=request.getParameter("stop_name");
		String driver_name=request.getParameter("dname");
		
		String morning_time=request.getParameter("mtime");
		String evening_time=request.getParameter("etime");
		
		String bus_fee=request.getParameter("fee");
		String bus_no=request.getParameter("bus_no");
		String bus_name=request.getParameter("bus_name");
		String seats=request.getParameter("seats");
		
		BusAdd_entity b=new BusAdd_entity();
		b.setStop_no(stop_no);
		b.setStop_name(stop_name);
		b.setDriver_name(driver_name);
		b.setMorning_time(morning_time);
		b.setEvening_time(evening_time);
		b.setBus_fee(bus_fee);
		b.setMainBusNo(bus_no);
		b.setMainBusName(bus_name);
		b.setSeats(seats);
		
		
		bus_model bb=new bus_model(connection.getconnection());
		try {
			boolean b1;
			b1=bb.insert_busdetails(b);
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

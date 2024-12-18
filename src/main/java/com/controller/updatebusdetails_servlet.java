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
 * Servlet implementation class updatebusdetails_servlet
 */
@WebServlet("/updatebusdetails_servlet")
public class updatebusdetails_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatebusdetails_servlet() {
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
		String stop_no=request.getParameter("stop_no");
		String stop_name=request.getParameter("stop_name");
		String driver_name=request.getParameter("dname");
		String morning_time=request.getParameter("mtime");
		String evening_time=request.getParameter("etime");
		String bus_fee=request.getParameter("fee");
		String bus_no=request.getParameter("busno");
		String bus_name=request.getParameter("busname");
		String seats=request.getParameter("seats");
		
		
		BusAdd_entity b=new BusAdd_entity();
		
		b.setStop_no(stop_no);
		b.setStop_name(stop_name);
		
		b.setMorning_time(morning_time);
		b.setEvening_time(evening_time);
		b.setBus_fee(bus_fee);
		b.setDriver_name(driver_name);
		b.setMainBusNo(bus_no);
		b.setMainBusName(bus_name);
		b.setSeats(seats);
		b.setId(id);
		
		bus_model bb=new bus_model(connection.getconnection());
		try {
			boolean b1;
			b1=bb.update_busdetails(b);
			if(b1)
			{
				response.sendRedirect("bus_details.jsp");
			}else
			{
				response.sendRedirect("edit.jsp");
			}
			
			
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
		
	}

}

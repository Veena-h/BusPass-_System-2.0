package com.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connection.connection;
import com.entity.route_entity;
import com.model.bus_model;

/**
 * Servlet implementation class route_form_servlet
 */
@WebServlet("/route_form_servlet")
@MultipartConfig(maxFileSize = 999999999)

public class route_form_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public route_form_servlet() {
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
		int id=Integer.parseInt(request.getParameter("s_id"));
		String stop_no=request.getParameter("stop_no");
		String stop_name=request.getParameter("stop_name");
		String driver_name=request.getParameter("dname");
		
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		
		String dept=request.getParameter("dept");
		String course=request.getParameter("course");
		String PrnNo=request.getParameter("prn_no");
		String paymentMethod=request.getParameter("paymentMethod");
		
		
		String bus_no=request.getParameter("bus_no");
		String bus_name=request.getParameter("bus_name");
		String fees=request.getParameter("fees");
		String feespaid=request.getParameter("feespaid");
		String seats=request.getParameter("seats");
		
		
	
		/* image */
		InputStream in = null;
		String s = null;

		/* String img1=request.getParameter("img1"); */
		Part filePart1 = request.getPart("pic");
		String img1 = filePart1.getSubmittedFileName();
		System.out.println(filePart1);

		if (filePart1 != null) {
			System.out.println(filePart1.getName());
			System.out.println(filePart1.getSize());
			System.out.println(filePart1.getContentType());
			in = filePart1.getInputStream();
		}
		
		
		
		
		
		
		/* image */
		InputStream in1 = null;
		String s1 = null;

		/* String img1=request.getParameter("img1"); */
		Part filePart11 = request.getPart("pic1");
		String img11 = filePart11.getSubmittedFileName();
		System.out.println(filePart1);

		if (filePart11 != null) {
			System.out.println(filePart11.getName());
			System.out.println(filePart11.getSize());
			System.out.println(filePart11.getContentType());
			in1 = filePart11.getInputStream();
		}
		
		
		
		
		
		
		
		


		
		route_entity r= new route_entity();
		r.setS_id(id);
		r.setStop_no(stop_no);
		r.setStop_name(stop_name);
		r.setDriver_name(driver_name);
		r.setName(name);
		r.setAddress(address);
		r.setPhone(phone);
		r.setDept(dept);
		r.setCourse(course);
		r.setPrn_no(PrnNo);
		r.setPaymentMethod(paymentMethod);
		r.setBus_no(bus_no);
		r.setBus_name(bus_name);
		r.setFees(fees);
		r.setFeespaid(feespaid);
		r.setSeats(seats);
		
		
		
		System.out.println("in servlet");
		bus_model bb=new bus_model(connection.getconnection());
		try {
			int b1;
			b1=bb.insert_routedetails(r,in,in1);
			
		 String action = request.getParameter("action");
			
			if (b1 > 0) {
				//response.sendRedirect("thanku.jsp");
				response.sendRedirect("error.jsp");
			}else
			{
				
				 if ("submit".equals(action)) {
	                    response.sendRedirect("thanku.jsp");
	                }
				 else if ("next".equals(action)) 
				 {
	                    response.sendRedirect("payment.jsp");
	                }
				
				
			}

		} catch (Exception e) 
		{
			e.printStackTrace(); 
		}

			if (in != null) {
				in.close();
			}
			filePart1.delete();
			
			if (in1 != null) {
				in1.close();
			}
			filePart11.delete();
			
			
			
		
	}

	}

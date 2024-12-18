package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.connection;
import com.entity.studentRegistration_rentity;
import com.model.bus_model;

/**
 * Servlet implementation class student_registration
 */
@WebServlet("/student_registration_servlet")
public class student_registration_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public student_registration_servlet() {
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
		
		String first_name=request.getParameter("fname");
		String last_name=request.getParameter("lname");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String DOB=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		
	    String password=request.getParameter("password");
		String dept=request.getParameter("dept");
		String course=request.getParameter("course");
		String prn_no=request.getParameter("prn_no");
		
		
		
		studentRegistration_rentity s=new studentRegistration_rentity();
		s.setFirst_name(first_name);
		s.setLast_name(last_name);
		s.setAddress(address);
		s.setPhone(phone);
		s.setDOB(DOB);
		s.setGender(gender);
		s.setEmail(email);
		s.setPassword(password);
		s.setCourse(course);
		s.setDept(dept);
		s.setPrn_no(prn_no);
		
		
		
		bus_model b=new bus_model(connection.getconnection());
		try {
			boolean b1;
			b1=b.insert_studentDetails(s);
			if(b1)
			{
				
				 request.setAttribute("success", b1);
				response.sendRedirect("index.jsp");
			}else
			{
				response.sendRedirect("student_registration.jsp");
			}
			
			
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
		
	}

}

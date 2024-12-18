package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.connection;
import com.entity.studentRegistration_rentity;
import com.model.bus_model;

/**
 * Servlet implementation class Login_servlet
 */
@WebServlet("/Login_servlet")
public class Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_servlet() {
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
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
	
		bus_model p=new bus_model(connection.getconnection());
		/* String b; */
		try {
			
			
	       studentRegistration_rentity loginResult = p.student_login(email, password);
	         if (loginResult != null) {
	             HttpSession session = request.getSession();
	             session.setAttribute("username", loginResult.getFirst_name());
	             session.setAttribute("id", loginResult.getId());
	             
	             
	             
	             response.sendRedirect("StudentDashboard.jsp");
	             
	         } else {
	             response.sendRedirect("error.jsp");
	         }

		}catch(Exception e)
		{
			
			e.printStackTrace();
		}

		
	}

}

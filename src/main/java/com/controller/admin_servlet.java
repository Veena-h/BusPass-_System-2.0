package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class admin_servlet
 */
@WebServlet("/admin_servlet")
public class admin_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_servlet() {
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
	
		
		String email1="Admin@gmail.com";
		String password1="123";
		if(email.equals(email1)&& password.equals(password1))
		
		{
			HttpSession Session=request.getSession();
			Session.setAttribute("uname", email);
			response.sendRedirect("admin_dashboard.jsp");
			
		}
		else {
			
			response.sendRedirect("admin_login.jsp");
			/*
			 * request.setAttribute("message", "Invalid UserId or Password");
			 * RequestDispatcher rd=request.getRequestDispatcher("admin_Login.jsp");
			 * rd.forward(request, response);
			 */
			
		}

	}

}

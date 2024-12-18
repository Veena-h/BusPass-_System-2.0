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
 * Servlet implementation class forgetform
 */
@WebServlet("/forgetform")
public class forgetform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgetform() {
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
		String currentPass=request.getParameter("currentpass");
		
		
		bus_model b=new bus_model(connection.getconnection());
		try {
			
			String form=b.forgetpass(currentPass);
			if(b!=null)
			{
				response.sendRedirect("error.jsp");
			}else
			{
				response.sendRedirect("forgetPass1.jsp");

			}
			
			
		} catch (Exception e) 
		{
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}

}

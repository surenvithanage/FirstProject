package com.oop.Credentials;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.dbConnection.DBConnection;

/**
 * Servlet implementation class adminlogindb
 */
@WebServlet("/adminlogindb")
public class adminlogindb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminlogindb() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try {
			
			DBConnection db = new DBConnection();
			
			Connection conn = DBConnection.createConnection();
		
			Statement stmt = conn.createStatement();
			PreparedStatement pst = conn.prepareStatement("Select id,password from admin where id=? and password=?");

			String id = request.getParameter("id");
			String pwd = request.getParameter("password");

			pst.setString(1, id);
			pst.setString(2, pwd);

			ResultSet res = pst.executeQuery();

			if (res.next()) {
				System.out.println("Valid login credentials");

				HttpSession session = request.getSession();
	            session.setAttribute("id", id);
				response.sendRedirect("adminMain.jsp");

			} else {
				response.sendRedirect("loginAdmin.jsp");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

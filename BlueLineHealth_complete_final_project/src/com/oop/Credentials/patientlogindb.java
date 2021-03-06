package com.oop.Credentials;
import java.sql.*;import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oop.dbConnection.DBConnection;
/**
 * Servlet implementation class patientlogindb
 */
@WebServlet("/patientlogindb")
public class patientlogindb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public patientlogindb() {
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
			PreparedStatement pst = conn
					.prepareStatement("Select nic,password from registration where nic=? and password=?");

			String nic = request.getParameter("nic");
			String pwd = request.getParameter("password");

			pst.setString(1, nic);
			pst.setString(2, pwd);

			ResultSet res = pst.executeQuery();
			
			 

			if (res.next()||nic==null) {
				HttpSession session = request.getSession();
	            session.setAttribute("nic", nic);
				System.out.println("Valid login credentials");
				response.sendRedirect("patientMain.jsp");
			} else {
				response.sendRedirect("alertjava.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

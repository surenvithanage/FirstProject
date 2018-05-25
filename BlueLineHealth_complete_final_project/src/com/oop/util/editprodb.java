package com.oop.util;

import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.dbConnection.DBConnection;

/**
 * Servlet implementation class editprodb
 */
@WebServlet("/editprodb")
public class editprodb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public editprodb() {
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
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String mem_type = request.getParameter("mem_type");
		String blood_group = request.getParameter("blood_group");
		String status = request.getParameter("status");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");

		try {
			Connection conn = null;
			DBConnection db = new DBConnection();

			conn = DBConnection.createConnection();
			Statement st = null;
			st = conn.createStatement();
			st.executeUpdate("update registration set name='" + name + "',nic='" + nic + "',gender='" + gender
					+ "',address='" + address + "',mem_type='" + mem_type + "',blood_group='" + blood_group
					+ "',status='" + status + "',dob='" + dob + "',email='" + email + "',mobile='" + mobile
					+ "',password='" + password + "' where nic='" + nic + "'"); // need session
			response.sendRedirect("patientpro.jsp");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}

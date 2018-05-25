package com.oop.util;
//Author Suren Anthony Vithanage

//IT17022248

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.dbConnection.DBConnection;

/**
 * Servlet implementation class ContactUsCheck
 */
@WebServlet("/ContactUsCheck")
public class ContactUsCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContactUsCheck() {
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

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
		String subject = request.getParameter("subject");

		try {
			DBConnection db = new DBConnection();

			Connection conn = DBConnection.createConnection();
			Statement stmt = conn.createStatement();

			String sql = "insert into contactus(firstname , lastname ,email , country , subject) values ('" + firstname
					+ "','" + lastname + "','" + email + "','" + country + "','" + subject + "')";

			int executeUp = stmt.executeUpdate(sql);

			if (executeUp > 0)
				response.sendRedirect("mainHomePage.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

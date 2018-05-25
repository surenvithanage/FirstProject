<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%@page import="java.sql.*"%>

	<%
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
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-channeling", "root", "dragonballz1");
			Statement st = null;
			st = conn.createStatement();
			st.executeUpdate("update registration set name='" + name + "',nic='" + nic + "',gender='" + gender
					+ "',address='" + address + "',mem_type='" + mem_type + "',blood_group='" + blood_group
					+ "',status='" + status + "',dob='" + dob + "',email='" + email + "',mobile='" + mobile
					+ "',password='" + password + "'where nic = '" + nic + "'"); //need session
			response.sendRedirect("patientprofile.jsp");
		} catch (Exception e) {
			System.out.println(e);
		}
	%>



</body>
</html>
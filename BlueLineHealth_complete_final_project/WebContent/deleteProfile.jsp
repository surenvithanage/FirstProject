<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		try {
			String nic = (String) session.getAttribute("nic");

			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-channeling", "root",
					"dragonballz1");
			Statement stmt = conn.createStatement();
			String sql = "delete from registration where nic = '" + nic + "'";
			PreparedStatement ps = conn.prepareStatement(sql);
			System.out.print("p1");
			int execute = ps.executeUpdate();

			response.sendRedirect("patientMain.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
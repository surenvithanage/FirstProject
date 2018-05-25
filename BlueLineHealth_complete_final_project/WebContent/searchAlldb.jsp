<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	background-image: url("images/background.jpg");
	background-size: 1400px;
	font-family: "Times New Roman";
	color: white;
}

input[type="text"] {
	color: white;
	background-color: transparent;
	border: none;
	padding: 14px 30px;
	margin-left: 100px;
}

.content {
	margin-left: 150px;
	margin-top: 100px;
}

.header {
	color: red;
}
</style>
</head>
<body>
	<jsp:include page="headerpatient.jsp"></jsp:include>
	<div class="content">
		<form>

			<h2 class="patient" align="center">
				<font><strong>Available Doctors</strong></font>
			</h2>
			<table align="center" cellpadding="15" cellspacing="5" border="1">
				<tr>
				</tr>
				<tr>
					<td><b>Doctor ID</b></td>
					<td><b>Name</b></td>
					<td><b>Hospital</b></td>
					<td><b>Qualification</b></td>
					<td><b>Specialization</b></td>
					<td><b>Time</b></td>
				</tr>
				<%
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-channeling", "root",
								"dragonballz1");
						Statement st = conn.createStatement();
						ResultSet rs = st.executeQuery("select * from doctordetails");
						if (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString("docID")%></td>
					<td><%=rs.getString("name")%></td>
					<td><%=rs.getString("hospital")%></td>
					<td><%=rs.getString("qualification")%></td>
					<td><%=rs.getString("specialization")%></td>
					<td><%=rs.getString("time")%></td>
				</tr>

				<%
					}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
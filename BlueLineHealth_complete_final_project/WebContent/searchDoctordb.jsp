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
.content{
	margin-left : 150px;
	margin-top : 100px;
}

.header{
color : red;
}
</style>
</head>
<body>
	<jsp:include page="headerpatient.jsp"></jsp:include>
	<div class="content">
		<form>
			<h1 class="heading">
			Doctor Information
			</h1>
			<table>
				<%
					try {
						String value = request.getParameter("search");
						int v = Integer.parseInt(value);

						Class.forName("com.mysql.jdbc.Driver").newInstance();
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-channeling", "root",
								"dragonballz1");
						Statement st = conn.createStatement();
						ResultSet rs = st.executeQuery("select * from doctordetails where docID=" + v);
						if (rs.next()) {
				%>
				<tr>
					<td class="header">Doctor ID:</td>
					<td><input type="text" value="<%=rs.getString("docID")%>">
					</td>
				</tr>
				<tr>
					<td class="header">Name:</td>
					<td><input type="text" value="<%=rs.getString("name")%>">
					</td>
				</tr>
				<tr>
					<td class="header">Hospital:</td>
					<td><input type="text" value="<%=rs.getString("hospital")%>">
					</td>
				</tr>
				<tr>
					<td class="header">Qualification:</td>
					<td><input type="text"
						value="<%=rs.getString("qualification")%>"></td>
				</tr>
				<tr>
					<td class="header">Specialization:</td>
					<td><input type="text"
						value="<%=rs.getString("specialization")%>"></td>
				</tr>
				<tr>
					<td class="header">Time:</td>
					<td><input type="text" value="<%=rs.getString("time")%>">
					</td>
				</tr>
				<%
					}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
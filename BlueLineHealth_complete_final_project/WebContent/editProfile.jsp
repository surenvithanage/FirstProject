<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>

<%
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "e-channeling";
	String userId = "root";
	String password = "dragonballz1";

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		String nic = (String) session.getAttribute("nic");
		connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
		statement = connection.createStatement();
		String sql = "SELECT * FROM registration where nic = '" + nic + "'";
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit profile</title>
</head>

<style>
.reg {
	color: white;
	margin-left : 20px;
}

body {
	font-color: white;
	margin: 0px;
	padding: 0px;
}

.main{
	margin-left : 50px;
	margin-top : 20px;
}

.button {
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 18px;
	margin: 8px 8px;
	cursor: pointer;
	border-radius: 5px;
}

.button2 {
	background-color: #008CBA;
	margin-left: 60px;
} /* Blue */
input[type="text"] {
	font-family: Arial;
	font-size: 25px;
	border-radius: 9px;
}

input[type="list"] {
	font-family: Arial;
	font-size: 25px;
	border-radius: 9px;
}

input[type="password"] {
	font-family: Arial;
	font-size: 25px;
	border-radius: 9px;
}

input[type="date"] {
	font-family: Arial;
	font-size: 23px;
	border-radius: 9px;
}

select {
	font-family: Arial-Black;
	font-size: 25px;
	border-radius: 9px;
}

select:invalid {
	color: gray;
}
</style>

<link rel="stylesheet" type="text/css" href="mainStyle.css">


<body>


	<jsp:include page="headerpatient.jsp"></jsp:include>

	<div class="main">

		<form action="editprofileDB.jsp" method="post">

			<table>

				<br>
				<br>
				<br>
				<h1 class="reg">Edit Profile</h1>
				<br>

				<tr>
					<td><h3 class="reg">Name:</h3></td>
					<td><input type="text" name="name"
						value="<%=resultSet.getString("name")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">NIC:</h3></td>
					<td><input type="text" name="nic"
						value="<%=resultSet.getString("nic")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">Gender:</h3></td>
					<td><input type="text" name="gender"
						value="<%=resultSet.getString("gender")%>"></td>
					<br />
				<tr>
					<td><h3 class="reg">Address:</h3></td>
					<td><input type="text" name="address"
						value="<%=resultSet.getString("address")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">Type:</h3></td>
					<td><input type="text" name="mem_type"
						value="<%=resultSet.getString("mem_type")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">Blood Group:</h3></td>
					<td><input type="text" name="blood_group"
						value="<%=resultSet.getString("blood_group")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">Status:</h3></td>
					<td><input type="text" name="status"
						value="<%=resultSet.getString("status")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">Date of Birth:</h3></td>
					<td><input type="date" name="dob"
						value="<%=resultSet.getString("dob")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">E-mail:</h3></td>
					<td><input type="text" name="email"
						value="<%=resultSet.getString("email")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">Mobile No:</h3></td>
					<td><input type="text" name="mobile"
						value="<%=resultSet.getString("mobile")%>"></td>
				</tr>

				<tr>
					<td><h3 class="reg">Password:</h3></td>
					<td><input type="password" name="password"
						value="<%=resultSet.getString("password")%>"></td>
				</tr>




			</table>
			<br />
			<button class="button button2" name=submit>Update and Save</button>
			<button class="button button2"
				onclick="window.location='patientPro.jsp'">Cancel</button>

		</form>
	</div>

	<%
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>





	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>
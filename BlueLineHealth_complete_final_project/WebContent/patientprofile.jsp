<html>
<head>
<title>Profile</title>
</head>
<link rel="stylesheet" type="text/css" href="footerStyle.css">

<style>
.button {
	border: none;
	color: white;
	padding: 10px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 6px 6px;
	cursor: pointer;
	border-radius: 5px;
}

.button2 {
	background-color: #008CBA;
	margin-left: 25px;
} /* Blue */
.button3 {
	background-color: #008CBA;
	margin-left: 25px;
} /* Blue */
body {
	padding: 25px;
	background: url(images/background.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin: 0px;
	padding: 0px;
}

.pro {
	color: white;
}

.content{
	margin-left : 50px;
	margin-top : 100px;
}
</style>

<body>
	<jsp:include page="headerpatient.jsp"></jsp:include>

	<div class="content">

		<h1 style="color: white">Patient Profile</h1>
		<img src="images/p.jpg" width="100px" height="100px"> <br>
		<br>
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

		<h2 style="color: white">Basic Information</h2>
		<br>


		<table style="width: 50%" border="0" align="left">
			<%
				try {
					String nic = (String)session.getAttribute("nic");
					connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
					statement = connection.createStatement();
					String sql = "SELECT * FROM registration where nic = '"+nic+"'";
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
			%>
			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name:</h3></td>
				<td><h3 class="pro"><%=resultSet.getString("name")%></h3></td>
			</tr>

			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NIC:</h3></td>
				<td><h3 class="pro"><%=resultSet.getString("nic")%></h3></td>
			</tr>


			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gender:</h3></td>
				<td><h3 class="pro"><%=resultSet.getString("gender")%></h3></td>
			</tr>

			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type:</h3></td>
				<td><h3 class="pro"><%=resultSet.getString("mem_type")%></h3></td>
			</tr>

			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Blood
						Group:</h3></td>
				<td><h3 class="pro"><%=resultSet.getString("blood_group")%>
					</h3></td>
			</tr>

			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Status:</h3></td>
				<td><h3 class="pro"><%=resultSet.getString("status")%></h3></td>
			</tr>


			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date
						Of Birth:</h3></td>
				<td><h3 class="pro"><%=resultSet.getString("dob")%></h3></td>
			</tr>

		</table>

		<br> <br>
		<h2 style="color: white; margin-top: 300px">Contact Information</h2>
		<br>

		<table style="width: 50%" border="0">

			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:</td>
				<td><h3 class="pro"><%=resultSet.getString("address")%></h3></td>
			</tr>

			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile
						No:</td>
				<td><h3 class="pro"><%=resultSet.getString("mobile")%></h3></td>
			</tr>

			<tr>
				<td><h3 class="pro">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-mail:</td>
				<td><h3 class="pro"><%=resultSet.getString("email")%></h3></td>
			</tr>

			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</table>


		<button class="button button2" onclick="window.location='editProfile.jsp'">Edit
			Profile</button>
		<button class="button button3"
			onclick="window.location='deleteProfile.jsp'">Delete Profile</button>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
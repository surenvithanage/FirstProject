
<%@page import="java.sql.*"%>
<%
	String docId = request.getParameter("docId");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "e-channeling";
	String userid = "root";
	String password = "dragonballz1";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try {
		connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		statement = connection.createStatement();
		String sql = "select * from doctor where docId=" + docId;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="UpdatePatientHistory.css">
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="headerAdmin.jsp"></jsp:include>
	<div class="container">
		<h1 class="header">Update Patient History</h1>
		<form method="post" action="updateProcessDoctorDetails">
				
					<input type="hidden" name="docId"
						value="<%=resultSet.getString("docId")%>">
				
					<br/>
					Doctor ID
					<input type="text" name="docId"
						value="<%=resultSet.getString("docId")%>">
					<br/>
					Name
					 style><input type="text" name="name"
						value="<%=resultSet.getString("name")%>">
				
					Status
					<input type="text" name="status"
						value="<%=resultSet.getString("status")%>">
				
					Email
					<input type="text" name="email"
						value="<%=resultSet.getString("email")%>">
					<br/>
					NIC
					<input type="text" name="nic"
						value="<%=resultSet.getString("nic")%>">
					<br/>
					Telephone
					<input type="text" name="telephone"
						value="<%=resultSet.getString("telephone")%>">
					<br/>
					Qualification
					<input type="text" name="qualification"
						value="<%=resultSet.getString("qualification")%>">
					<br/>
					Specialization
					<textarea name="specilization""<%=resultSet.getString("specilization")%>"></textarea>
					<br/>
					Work Experience
					<textarea name="workexp""<%=resultSet.getString("workexp")%>"></textarea>
				<br/>
					<input type="submit" value="Update">
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
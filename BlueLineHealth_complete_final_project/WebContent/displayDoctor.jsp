<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="mainStyle.css">
<style type="text/css">
.container{
	border-radius: 5px;
	background-color: #000037;
	padding: 20px;
	width: 1200px;
	opacity: 0.8;
	margin-top : 150px;
	color : white;
	width : 90%;
	margin-left : 50px;
}

a{
	text-decoration : none;
	color : green;
}

a:hover{
	background-color : yellow;
}

</style>
</head>
<body>
	<div class="header">
		<jsp:include page="headerAdmin.jsp"></jsp:include>
	</div>
	<div class="container">
	<%
	try{
		
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc.mysql.//localhost:3306/e-channeling";
	String username = "root";
	String password = "dragonballz1";
	
	Class.forName(driver);
	
	}catch(Exception e){
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultset = null;

	%>

	<h2 class = "patient" align="center">
		<font><strong>Display Doctor</strong></font>
	</h2>
	<table align="center" cellpadding="10" cellspacing="5" border="1">
		<tr>
		
 		
 	

		</tr>
		<tr>
			<td><b>docID</b></td>
			<td><b>name</b></td>
			<td><b>status</b></td>
			<td><b>email</b></td>
			<td><b>nic</b></td>
			<td><b>telephone</b></td>
			<td><b>qualification</b></td>
			<td><b>specialization</b></td>
			<td><b>workexp</b></td>
			<td><b><a href="AddDoctor.jsp">Add New Data</a></b></td>
			<td><b><a href="DeleteDoctor.jsp">Delete Records</a></b></td>
			
		</tr>
		<%
		

		try{ 
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-channeling" , "root" ,"dragonballz1"); 
		statement = connection.createStatement(); 
		String sql = "SELECT* FROM doctor"; 
		resultset = statement.executeQuery(sql); 
		while(resultset.next()){

		%>

		<tr >
			
			<td><%= resultset.getString("docId") %></td>
			<td><%= resultset.getString("name") %></td>
			<td><%= resultset.getString("status") %></td>
			<td><%= resultset.getString("email") %></td>
			<td><%= resultset.getString("nic") %></td>
			<td><%= resultset.getString("telephone") %></td>
			<td><%= resultset.getString("qualification") %></td>
			<td><%= resultset.getString("specilization") %></td>
			<td><%= resultset.getString("workexp") %></td>
			<td><a href="UpdateDoctorDetails.jsp?docId=<%=resultset.getString("docId")%>">Update</a></td>
			<td><a href="DeleteDoctor.jsp?docId=<%=resultset.getString("docId")%>">Delete</a></td>
		</tr>



		<%
		}
		
		}catch(Exception e)
		{ e.printStackTrace();}
		%>
	</table>
	</div>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
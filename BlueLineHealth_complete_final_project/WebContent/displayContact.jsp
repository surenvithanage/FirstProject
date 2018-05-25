<html>
<head>
<title>Contact display</title>
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
	border-radius:5px;
}

.button2 {background-color: #008CBA;
	margin-left: 25px; } /* Blue */

.button3{background-color: #008CBA;
	margin-left: 25px; } /* Blue */

table{
	opacity: 0.8;
	}


#back {
  
    padding: 25px;
    background: url(s.jpg);
    background-repeat: no-repeat;
    background-size: 1600px 1400px;
}


.pro{
	color:white;
}

</style>
<link rel="stylesheet" type="text/css" href="mainStyle.css">



<body>

<div id="back">
	
	    	<jsp:include page="headerAdmin.jsp"></jsp:include>
	<center>
	<h1 style="color:white">Contact Us Details</h1></center>
	<br><br>
	
	

	
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
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
	

    
    
    
    
    
    	<table align="center" cellpadding="15" cellspacing="5" border="1" bgcolor="#000037">
		<tr>
		
		</tr>
		<tr>
			<td><h3 class="pro">Contact ID</h3></td>
			<td><h3 class="pro">firstname</h3></td>
			<td><h3 class="pro">lastname</h3></td>
			<td><h3 class="pro">email</h3></td>
			<td><h3 class="pro">country</h3></td>
			<td><h3 class="pro">subject</h3></td>
			<td><a href="#"><h3 class="pro">Reply</h3></a></td>
			
		</tr>
	        <%
			try{ 
				connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
				statement=connection.createStatement();
				String sql ="SELECT * FROM contactus ";   //need session
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
		%>

		<tr >
			<td><h4 class="pro"><%= resultSet.getString("contactID") %></h4></td>
			<td><h4 class="pro"><%= resultSet.getString("firstname") %></h4></td>
			<td><h4 class="pro"><%= resultSet.getString("lastname") %></h4></td>
			<td><h4 class="pro"><%= resultSet.getString("email") %></h4></td>
			<td><h4 class="pro"><%= resultSet.getString("country") %></h4></td>
			<td><h4 class="pro"><%= resultSet.getString("subject") %></h4></td>
			<td><a href="https://accounts.google.com/signin/v2/identifier?hl=en&continue=https%3A%2F%2Fmail.google.com%2Fmail&service=mail&flowName=GlifWebSignIn&flowEntry=AddSession"><h4 class="pro">Reply</h4></a></td>
		</tr>



		<%
		}
		
		}catch(Exception e)
		{ e.printStackTrace();}
		%>
	</table>
    
    
  

    
    
    
    
    
	
		
	
	
	
	
	
	
<footer class="footer-distributed">

	<div class="footer-left">

		<h3>
			BlueLine Health 
		</h3>

		<p class="footer-links">
			<a href="#">Home</a> · <a href="#">Blog</a> · <a href="#">Pricing</a>
			· <a href="#">About</a> · <a href="#">Faq</a> · <a href="#">Contact</a>
		</p>

		<p class="footer-company-name">Blueline Health &copy; 2018</p>
	</div>

	<div class="footer-center">

		<div>
			<i class="fa fa-map-marker"></i>
			<p>
				<span>21 Main Street</span> Colombo, Sri lanka
			</p>
		</div>

		<div>
			<i class="fa fa-phone"></i>
			<p>+94 769391251</p>
		</div>

		<div>
			<i class="fa fa-envelope"></i>
			<p>
				<a href="mailto:support@company.com">BlueLineHealth@gmail.com</a>
			</p>
		</div>

	</div>

	<div class="footer-right">

		<p class="footer-company-about">
			<span>About the company</span> We are here to help you to obtain the
			best services that can never be found any where else other than here.
		</p>



	</div>

	</footer>
	
	
	
	
	
</body>
</html>
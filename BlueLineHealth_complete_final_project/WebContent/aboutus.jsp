<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<html>
<head>
<title>About Us</title>
</head>
<link rel="stylesheet" type="text/css" href="footerStyle.css">

<style>
body {
	padding: 25px;
	background: url(images/background.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin : 0px;
	padding : 0px;
}

.log {
	color: white;
}

.button {
	border: none;
	color: white;
	padding: 12px 40px;
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
} /* Blue */
input[type="text"] {
	font-family: Arial;
	font-size: 25px;
	border-radius: 9px;
}

input[type="password"] {
	font-family: Arial;
	font-size: 25px;
	border-radius: 9px;
}


.heading {
	margin-top: 100px;
	margin-left: 550px;
}

.content {
	margin-left: 50px;
}


</style>




<body>


	<jsp:include page="Mainheader.jsp"></jsp:include>

	<h1 class=" heading" style="color: white; font-family: Arial">About
		Us</h1>
	<br>
	<br>
	<div class="content">
		<h2 style="color: white">Management</h2>
		<p style="color: white; font-size: 20px">
			<b>Vision Statement</b><br> To be the foremost and preferred
			Private Healthcare Facility in the Country, which will serve the
			Nation and her People to build a healthier community. <br> <br>
			<b>Mission Statement</b><br> To maintain exceptional and
			compassionate quality while offering cost effective healthcare
			solutions of international standards.
		</p>
		<br> <br>
		<h2 style="color: white">Director Board</h2>

		<br>
		<table>
			<tr>
				<td><img src=images/suren.jpg width=200px height=200px;>
				</td>
				<td><img src=images/pula.jpg width=200px height=200px
					padding=20px></td>
				<td><img src=images/kaushi.jpg width=200px height=200px
					padding=20px></td>

			</tr>

		</table>

		<br>
		<h2 style="color: white; font-family: Arial;">
			<center>Hot Line-0115 555 555</center>
		</h2>
	</div>




	
	<jsp:include page="footer.jsp"></jsp:include>
	

</body>
</html>
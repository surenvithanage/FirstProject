<%-- 
    Document   : DoctorManagement
    Created on : May 6, 2018, 5:53:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Doctor Management</title>
<link rel="stylesheet" type="text/css" href="maincss.css" />
<link rel="stylesheet" type="text/css" href="mainStyle.css" />
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	background-image: url("images/background.jpg");
	background-size: 1400px;
	font-family: "Times New Roman";
	color: white;
}
.marquee{
	margin-left : 500px;
	margin-top : 75px;
	font-size : 25px;
}

.button {
	padding : 14px 28px;
	margin-left : 120px;
	font-size : 15px;
	opacity : 0.8;
}
.footer{
	margin-top : 150px;
}
</style>
</head>
<body background="Image9.png">
	<!--Navigation bar-->
	<p class="Welcome">
		<jsp:include page="headerDoctor.jsp"></jsp:include>
		<br>
		<br>
	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
	</div>
	<!--End navigation bar-->
	<br>
	<br>
	<br>
	<!--Buttons-->
	<button class="button addDoc" onclick="location.href = 'AddDoctor.jsp';">Add
		Doctor</button>
	<button class="button updateDoc"
		onclick="location.href = 'UpdateDoc.jsp';">Update Doctor
		Details</button>
	<button class="button deleteDoc"
		onclick="location.href = 'DeleteDoctor.jsp';">Delete Doctor</button>
	<button class="button viewDoc" onclick="location.href = 'ViewDoc.jsp';">View
		Doctor Details</button>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>

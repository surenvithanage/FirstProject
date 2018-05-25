<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Patient login</title>
</head>
<link rel="stylesheet" type="text/css" href="mainStyle.css">
<link rel="stylesheet" type="text/css" href="footerStyle.css">

<style>

#back {
  
    padding: 25px;
    background: url(s.jpg);
    background-repeat: no-repeat;
    background-size: 1400px 1000px;
}


.log{
	color:white;
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
	border-radius:5px;
}

.button2 {background-color: #008CBA;
	 } /* Blue */


.button1 {
 
    border: none;
    color: white;
    padding: 12px 40px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    margin: 8px 8px;
	cursor: pointer;
	border-radius:5px;
}

.button3 {background-color: blue;
	 } /* Blue */


input[type="text"]{
	font-family : Arial;
	font-size : 25px;
	border-radius :9px;
	}
	
input[type="password"]{
	font-family : Arial;
	font-size : 25px;
	border-radius :9px;
	}

.reg{
	color:white;
}


</style>





<body>
<div id="back">

<jsp:include page="Mainheader.jsp"></jsp:include>

<br><br><br><br><br>

<center>

<h1 class="reg" >Login Failed.Try Again</h1>



<button class="button1 button3" onclick="window.location='mainHomePage.jsp'">Try Again</button></br></br>


</center>

	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	


</body>
</html>
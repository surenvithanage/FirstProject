<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Channeling</title>
<link rel="stylesheet" type="text/css" href="mainStyle.css" />
<style type="text/css">
.slideshow {
	margin-left: 270px;
}

.Welcome {
	color: white;
}

.User {
	color: white;
	margin-left: 10px;
	color: blue;
}
</style>
</head>
<body>
	<jsp:include page="headerAdmin.jsp"></jsp:include>

	<div class="content">
		<div class="marquee">Welcome to Blue Health Line</div>
		<div class="User">
			<%
				String name = (String) session.getAttribute("id");
				out.print("Welcome  " + name.toUpperCase());
			%>
		</div>
		<center>
			<div class="slideshow">
				<jsp:include page="pageSlideShow.jsp"></jsp:include>
			</div>
	</div>
	</center>
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>
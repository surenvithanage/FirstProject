<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="registerStyle.css">
</head>

<link rel="stylesheet" type="text/css" href="mainStyle.css">



<body>
	<jsp:include page="Mainheader.jsp"></jsp:include>
	<div class="content">




		<form action="registerdb" method="post">


			<table>
				<br>
				<br>
				<h1 class="reg">Register</h1>
				<br>

				<tr>
					<td><h3 class="reg">Name:</h3></td>
					<td><input type="text" name="name" required></td>
				</tr>

				<tr>
					<td><h3 class="reg">NIC:</h3></td>
					<td><input type="text" name="nic" value=""
						placeholder="xxxxxxxxxV" required></td>
				</tr>

				<tr>
					<td><h3 class="reg">Gender:</h3></td>
					<td><h3 class="reg">
							<input type="radio" name="gender" value="male"> Male <input
								type="radio" name="gender" value="female" /> Female
						</h3></td>
				</tr>

				<tr>
					<td><h3 class="reg">Address:</h3></td>
					<td><input type="text" name="address" required></td>
				</tr>

				<tr>
					<td><h3 class="reg">Type:</h3></td>
					<td><select name="mem_type">
							<option value=" disabled selected hidden">Please
								Choose...........</option>
							<option value="Patient">Patient</option>
					</select></td>
				</tr>

				<tr>
					<td><h3 class="reg">Blood Group:</h3></td>
					<td><select name="blood_group">
							<option value="disabled selected hidden">Please
								Choose...........</option>
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
					</select></td>
				</tr>

				<tr>
					<td><h3 class="reg">Status:</h3></td>
					<td><select name="status">
							<option value="" disabled selected hidden>Please
								Choose...........</option>
							<option value="Single">Single</option>
							<option value="married">Married</option>
					</select></td>
				</tr>

				<tr>
					<td><h3 class="reg">Date of Birth:</h3></td>
					<td><input type="date" name="dob" required></td>
				</tr>

				<tr>
					<td><h3 class="reg">E-mail:</h3></td>
					<td><input type="text" name="email"
						placeholder="xxxxxxxxxxx@xxx.com"></td>
				</tr>

				<tr>
					<td><h3 class="reg">Mobile No:</h3></td>
					<td><input type="text" name="mobile" placeholder="07XXXXXXXX"
						required></td>
				</tr>

				<tr>
					<td><h3 class="reg">Password:</h3></td>
					<td><input type="password" name="password" required></td>
				</tr>





			</table>
			<button class="button button2" name="submit">Register</button>

		</form>

	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
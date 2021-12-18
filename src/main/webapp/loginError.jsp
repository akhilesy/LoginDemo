<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256" import="bean.Student"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"    
      "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Invalid Login</title>
</head>

<body>
	<center>

		<%= Student student = (Student (session.getAttribute("data"));%>

		<%= student.getSsn() %>
		doesn't exist in our database
	</center>

	
		<table>
	<tr>
				<td></td>
				<td><a href="regisLogin">login page</a></td>
				<td><a href="enroll.jsp">enroll</a></td>
			</tr>
		</table>

</body>

</html>
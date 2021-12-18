<%@page import="bean.MyCourses"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256" import="bean.Student"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Student Logged Successfully</title>
</head>

<body>

	<table border="1" width="500" align="center">
		<tr bgcolor="00FF7F">
			<th><b>Student SSN</b></th>
			<th><b>Student Firstname</b></th>
			<th><b>Student last name</b></th>
			<th><b>Student MI</b></th>
			<th><b>Student Phone</b></th>
			<th><b>Student Birth date</b></th>
			<th><b>Student Zipcode</b></th>


			<th><b></b></th>
		</tr>
		<%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%>
		<%ArrayList<Student> std = 
            (ArrayList<Student>)request.getAttribute("data");
        
        for(Student s:std){%>
		<%-- Arranging data in tabular form
        --%>
		<tr>
			<td><%=s.getSsn()%></td>
			<td><%=s.getFirstName()%></td>
			<td><%=s.getLastName()%></td>
			<td><%=s.getMi()%></td>
			<td><%=s.getPhone()%></td>
			<td><%=s.getBirthDate()%></td>
			<td><%=s.getStreet()%></td>
			<td><%=s.getZipcode()%></td>
		</tr>
		<%}%>
	</table>

	<table border="1" width="500" align="center">
		<tr bgcolor="00FF7F">
			<th><b>Course ID</b></th>
			<th><b>Course tital</b></th>
			<th><b>Grade</b></th>
			<th><b></b></th>
		</tr>
		<%-- Fetching the attributes of the request object
             which was previously set by the servlet 
             
        --%>
		<%ArrayList<MyCourses> crs = 
            (ArrayList<MyCourses>)request.getAttribute("data2");
        
        for(MyCourses s:crs){%>
		<%-- Arranging data in tabular form
        --%>
		<tr>
			<td><%=s.getCourseId()%></td>
			<td><%=s.getTitle()%></td>
			<td><%=s.getGrade()%></td>

		</tr>
		<%}%>
		
	</table>
	<form name="login" action="regisLogin.jsp" method="post" >
	    
	    <table>
	    
	    <tr> 
	    <td action="regisLogin.jsp" method="post"><input type="submit" value="Exit" name="exit"/></td>
		 
	    <td action="enroll.jsp" method="post"> <input type=""submit"" value="Enroll" name="enroll"/></td>
	     </tr>
	     </table>
	</form>
	
	




</body>

</html>
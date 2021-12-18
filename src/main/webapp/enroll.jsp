<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Enroll page</title>
</head>
<body>
<form action="myRegist.jsp" method="post">
  <table>
      <tr>
         <td>
               <select>
                   <option>java</option>
                    <option>SQL</option>
                    <option>c</option>
                    <option>oracle</option>
               </select>
         </td>
      </tr>
      
       <tr>
         <td>
          <select>
                   <option>A</option>
                    <option>B</option>
                    <option>C</option>
                    <option>D</option>
               </select>
         
         </td>
      </tr>
      
       <tr>
         <td>  <input type="submit" value="Register"></td>
           
           <td action="myRegist.jsp" method="post"><input type="submit" value="Exit" name="exit"/></td>
		 
	    <td action="dropClass" method="post"> <input type="submit" value="Drop" name="drop"/></td>
         </td>
      </tr>
  </table>

</form>

</body>
</html>
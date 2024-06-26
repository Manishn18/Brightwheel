<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Update Student</title>
	<link type = "text/css" rel = "stylesheet" href = "css/style.css">
	<link type = "text/css" rel = "stylesheet" href = "css/add-student-style.css">
</head>
<body>
	<div id="wrapper">
        <div id="header">
            <h2>PICT College</h2>
        </div>
    </div>
 
    <div id="container">
    	<h3>Update Student</h3>
    	<form action = "StudentControllerServlet" method = "GET">
    		<input type = "hidden" name = "command" value = "UPDATE" />
    		<input type = "hidden" name = "studentId" value = "${THE_STUDENT.id}" />
    		<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><input type = "text" name = "firstname" value = "${THE_STUDENT.firstName}"/></td>
					</tr>
					
					<tr>
						<td><label>Last name:</label></td>
						<td><input type = "text" name = "lastname" value = "${THE_STUDENT.lastName}"/></td>
					</tr>
					
					<tr>
						<td><label>Email:</label></td>
						<td><input type = "text" name = "email" value = "${THE_STUDENT.email}"/></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type = "submit" name = "Save" class = "save"/></td>
					</tr>
				</tbody>    		
    		</table>
    	</form>
    	
    	<div style = "clear: both;"></div>
    	<p>
    		<a href = "StudentControllerServlet">Back to List</a>
    	</p>		
    </div>
</body>
</html>
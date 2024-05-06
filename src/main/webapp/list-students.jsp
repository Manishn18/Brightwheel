<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Tracker App</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>PICT College</h2>
        </div>
    </div>
 
    <div id="container">
        <div id="content">
        <!-- put new button : Add Student -->
        <input type = "button" value = "Add Student" onclick = "window.location.href = 'add-student-form.jsp'; return false;" 
        class = "add-student-button"/>
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>

				<c:forEach var = "tempStudent" items="${STUDENT_LIST}">
					<c:url value = "StudentControllerServlet" var = "tempLink">
						<c:param name = "command" value = "LOAD" />
						<c:param name = "studentId" value = "${tempStudent.id}" />
					</c:url>
					
					<c:url value = "StudentControllerServlet" var = "deleteLink">
						<c:param name = "command" value = "DELETE" />
						<c:param name = "studentId" value = "${tempStudent.id}" />
					</c:url>
					
					<tr>
						<td>${tempStudent.getFirstName()}</td>
						<td>${tempStudent.getLastName()}</td>
						<td>${tempStudent.getEmail()}</td>
						<td>
							<a href = "${tempLink}">Update</a>
							|
							<a href="${deleteLink}" onclick="if (!confirm('Are you sure you want to delete this student record?')) return false;">Delete</a>

						</td>
					</tr>
				</c:forEach>
					
            </table>
        </div>
    </div>
</body>
</html>

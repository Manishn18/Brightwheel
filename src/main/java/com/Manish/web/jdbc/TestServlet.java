package com.Manish.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	// Define datasource/connection pool for resource injection
	@Resource(name = "jdbc/web_student_tracker")
	private DataSource dataSource;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Step 1: Set up the printwriter
		PrintWriter out = response.getWriter();
		// Step 2: Get a connection to the database
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		try {
			myConn = dataSource.getConnection();
			// Step 3: Create a SQL statements
			String sql = "Select * from student";
			myStmt = myConn.createStatement();
			
			// Step 4: Execute SQL query
			myRs = myStmt.executeQuery(sql);
			
			// Step 5: Process the result set
			while(myRs.next()) {
				String email = myRs.getString("email");
				out.println(email);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}

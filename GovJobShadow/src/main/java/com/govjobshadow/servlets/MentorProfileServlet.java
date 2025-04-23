package com.govjobshadow.servlets;

import com.govjobshadow.utils.DatabaseConfig;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/mentorProfile")
public class MentorProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jobTitle = request.getParameter("jobTitle");
        String jobDescription = request.getParameter("jobDescription");

        try (Connection conn = DatabaseConfig.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO job_postings (title, description) VALUES (?, ?)");
            stmt.setString(1, jobTitle);
            stmt.setString(2, jobDescription);
            stmt.executeUpdate();
            response.sendRedirect("mentorProfile.jsp?success=Job added successfully");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("mentorProfile.jsp?error=Failed to add job");
        }
    }
}

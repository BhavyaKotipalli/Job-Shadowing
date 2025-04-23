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

@WebServlet("/addJob")
public class AddJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String link = request.getParameter("link");

        try (Connection conn = DatabaseConfig.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO shadow_jobs (title, description, link) VALUES (?, ?, ?)");
            stmt.setString(1, title);
            stmt.setString(2, description);
            stmt.setString(3, link);
            stmt.executeUpdate();
            stmt.close();

            response.sendRedirect("shadowJobs.jsp?success=Job added successfully");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("addJob.jsp?error=Failed to add job");
        }
    }
}

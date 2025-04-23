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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/jobListings")
public class JobListingServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String[]> jobs = new ArrayList<>();

        try (Connection conn = DatabaseConfig.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement("SELECT id, title, description, link FROM jobs");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String[] job = new String[4];
                job[0] = String.valueOf(rs.getInt("id"));
                job[1] = rs.getString("title");
                job[2] = rs.getString("description");
                job[3] = rs.getString("link");
                jobs.add(job);
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("jobs", jobs);
        request.getRequestDispatcher("jobListings.jsp").forward(request, response);
    }
}

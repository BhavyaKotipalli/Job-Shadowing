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

@WebServlet("/shadowJob")
public class ShadowJobServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String[]> jobs = new ArrayList<>();

        try (Connection conn = DatabaseConfig.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement("SELECT mentor_name, job_title, job_description FROM shadow_jobs");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String mentorName = rs.getString("mentor_name");
                String jobTitle = rs.getString("job_title");
                String jobDescription = rs.getString("job_description");
                jobs.add(new String[]{mentorName, jobTitle, jobDescription});
            }
            request.setAttribute("jobs", jobs);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.getRequestDispatcher("shadowJobs.jsp").forward(request, response);
    }
}

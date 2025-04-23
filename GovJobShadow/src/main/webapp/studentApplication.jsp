<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-image: url('img1.jpg');
            background-size: cover;
            color: white;
        }
        form {
            width: 300px;
            margin: 0 auto;
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
        }
        input, button, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }
        button {
            background-color: #007bff;
            color: white;
        }
        a {
            color: white;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h2>Apply for Shadow Job</h2>
    <% if (request.getParameter("error") != null) { %>
        <p style="color: red;"><%= request.getParameter("error") %></p>
    <% } %>
    <% if (request.getParameter("success") != null) { %>
        <p style="color: green;"><%= request.getParameter("success") %></p>
    <% } %>
    <form action="applyShadowJob" method="post">
        <input type="hidden" name="jobId" value="<%= request.getParameter("jobId") %>">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Your Email" required>
        <textarea name="motivation" placeholder="Why do you want this shadow job?" required></textarea>
        <button type="submit">Apply</button>
    </form>
    <p><a href="shadowJobs.jsp" style="color: white;">Back to Shadow Jobs</a></p>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Mentor Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-image: url('img1.jpg');
            background-size: cover;
            color: white;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
        }
        form, .job-list {
            margin-top: 20px;
        }
        input, textarea, button {
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
    </style>
</head>
<body>
    <h1>Mentor Profile</h1>
    <div class="container">
        <h2>Post a New Job Opportunity</h2>
        <form action="addJob" method="post">
            <input type="text" name="jobTitle" placeholder="Job Title" required>
            <textarea name="jobDescription" placeholder="Job Description" required></textarea>
            <input type="text" name="jobLink" placeholder="More Details Link" required>
            <button type="submit">Post Job</button>
        </form>
        <h2>Your Posted Jobs</h2>
        <div class="job-list">
            <% 
                List<String[]> jobs = (List<String[]>) request.getAttribute("jobs");
                if (jobs != null && !jobs.isEmpty()) {
                    for (String[] job : jobs) {
            %>
                <div class="job-item">
                    <h3><%= job[1] %></h3>
                    <p><%= job[2] %></p>
                    <a href="<%= job[3] %>">More details</a>
                </div>
            <% 
                    }
                } else {
            %>
                <p>You haven't posted any jobs yet.</p>
            <% 
                } 
            %>
            <p><a href="addJob.jsp">Add New Job Shadowing Opportunity</a></p>
            
        </div>
    </div>
    <p><a href="index.jsp" style="color: white;">Back to Home</a></p>
</body>
</html>

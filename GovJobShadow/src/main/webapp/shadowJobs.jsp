<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shadow Jobs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-image: url('img1.jpg'); /* Ensure you have this image */
            background-size: cover;
            color: black; /* Changed text color to black */
        }
        .job-list {
            margin: 20px auto;
            width: 80%;
            text-align: left;
        }
        .job-item {
            background: rgba(255, 255, 255, 0.9);
            margin: 10px 0;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        a {
            color: #007bff; /* Link color */
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Available Shadow Jobs</h1>
    <div class="job-list">
        <% 
            // Sample static shadow job listings
            String[][] sampleJobs = {
                {"Job Shadowing at Company A", "An opportunity to shadow professionals at Company A.", "https://example.com/job-shadow-company-a"},
                {"Internship at Company B", "Gain experience with Company B through this internship.", "https://example.com/internship-company-b"},
                {"Job Shadowing with Company C", "Explore career options by shadowing employees at Company C.", "https://example.com/job-shadow-company-c"}
            };
            
            if (sampleJobs != null && sampleJobs.length > 0) {
                for (String[] job : sampleJobs) {
        %>
            <div class="job-item">
                <h3><%= job[0] %></h3>
                <p><%= job[1] %></p>
                <a href="<%= job[2] %>">More details</a>
            </div>
        <% 
                }
            } else {
        %>
            <p>No shadow jobs available at this time.</p>
        <% 
            } 
        %>
    </div>
    <p><a href="index.jsp">Back to Home</a></p>
</body>
</html>

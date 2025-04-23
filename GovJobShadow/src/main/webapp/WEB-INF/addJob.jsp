<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Job Shadowing Opportunity</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-image: url('images/background.jpg');
            background-size: cover;
            color: black;
        }
        form {
            width: 300px;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
        }
        button {
            width: 100%;
            padding: 10px;
        }
    </style>
</head>
<body>
    <h1>Add Job Shadowing Opportunity</h1>
    <form action="addJob" method="post">
        <input type="text" name="title" placeholder="Job Title" required>
        <textarea name="description" placeholder="Job Description" required></textarea>
        <input type="text" name="link" placeholder="More Details Link" required>
        <button type="submit">Add Job</button>
    </form>
    <p><a href="shadowJobs.jsp">Back to Shadow Jobs</a></p>
</body>
</html>

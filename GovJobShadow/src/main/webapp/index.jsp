<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gov Career Connect</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('img1.jpg'); /* Background image */
            background-size: cover;
            color: white; /* Text color */
            text-align: center;
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 15px;
            position: relative;
        }
        .navbar h1 {
            margin: 0;
            font-size: 24px; /* Title size */
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            transition: background-color 0.3s;
        }
        .navbar a:hover {
            background-color: rgba(255, 255, 255, 0.3);
        }
        .slider {
            width: 100%;
            margin: auto;
            overflow: hidden;
            position: relative;
            height: 400px; /* Adjust height as needed */
        }
        .slides {
            display: flex;
            transition: transform 0.5s ease;
        }
        .slide {
            min-width: 100%;
            height: 400px; /* Adjust height as needed */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .slide img {
            width: 100%;
            height: 100%; /* Full container height */
            object-fit: cover; /* Maintain aspect ratio */
        }
        .content {
            margin: 20px;
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
        }
        .section {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            margin: 20px auto;
            border-radius: 10px;
            width: 80%; /* Width of the section */
        }
    </style>
    <script>
        let currentIndex = 0;
        function showSlides() {
            const slides = document.querySelector('.slides');
            const totalSlides = slides.children.length;
            currentIndex = (currentIndex + 1) % totalSlides;
            slides.style.transform = 'translateX(' + (-currentIndex * 100) + '%)';
            setTimeout(showSlides, 3000); // Change image every 3 seconds
        }
        window.onload = showSlides;
    </script>
</head>
<body>

<div class="navbar">
    <h1>GOVT CAREER CONNECT</h1>
    <p>Your Gateway to Government Jobs and Job Shadowing</p>
    <a href="login.jsp">Jobs</a>
    <a href="shadowJobs.jsp">Shadow Jobs</a>
    <a href="signup.jsp">Signup</a>
</div>

<div class="slider">
    <div class="slides">
        <div class="slide"><img src="slide1.jpg" alt="Slide 1"></div>
        <div class="slide"><img src="slide2.jpg" alt="Slide 2"></div>
        <div class="slide"><img src="slide3.jpg" alt="Slide 3"></div>
    </div>
</div>

<div class="content">
    <h1>Welcome to Gov Career Connect</h1>
    <p>Your gateway to explore government job opportunities and shadowing programs.</p>
    <p>Sign up now to find the best job shadowing experiences!</p>
    <a href="signup.jsp" style="color: yellow; text-decoration: underline;">Get Started</a>
</div>

<!-- Additional sections -->
<div class="section">
    <h2>About Us</h2>
    <p>We connect students with government job opportunities through shadowing experiences.</p>
</div>

<div class="section">
    <h2>Latest News</h2>
    <p>Stay updated with the latest job postings and shadowing opportunities in your area.</p>
</div>

<div class="section">
    <h2>Contact Us</h2>
    <p>If you have any questions, feel free to <a href="contact.jsp" style="color: yellow;">contact us</a>.</p>
</div>

</body>
</html>

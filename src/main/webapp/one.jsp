<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web Application</title>
    <style>
    body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        height: 100%;
    }

    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px;
        background-color: #800080;
        color: white;
    }

    .logo {
        display: flex;
        align-items: center;
    }

    .logo img {
        height: 70px;
        margin-right: 20px;
    }
.navbar {
    background-color: #800080;
}
    .background-image {
        width: 100%;
        height: auto;
        display: block;
        margin-top: 0; /* Ensures no space between navbar and image */
    }

    .content {
        background: rgba(0, 0, 0, 0.6);
        padding: 20px;
        border-radius: 8px;
        color: white;
        text-align: center;
        position: absolute;
        top: 50%;
        left: 40%;
        transform: translate(-50%, -50%);
        width: 300px; /* Adjust the width as needed */
    }
     .content1 {
        background: rgba(0, 0, 0, 0.6);
        padding: 20px;
        border-radius: 8px;
        color: white;
        text-align: center;
        position: absolute;
        top: 50%;
        left: 60%;
        transform: translate(-50%, -50%);
        width: 300px; /* Adjust the width as needed */
    }
    

    .course-section {
        padding: 20px;
        background-color: #f7f7f7;
        text-align: center;
    }

    .card-row {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
    }

    .card {
        background-color: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin: 10px;
        padding: 20px;
        width: 200px;
        text-align: center;
    }

    .card h3 {
        margin: 0;
        font-size: 1.2em;
    }

    .card p {
        font-size: 0.9em;
    }

    button {
        background-color: #007bff;
        border: none;
        color: white;
        padding: 10px 20px;
        margin: 10px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    button:hover {
        background-color: #0056b3;
    }

    footer {
        text-align: center;
        padding: 10px 0;
        background-color: #333;
        color: white;
    }
    .h2{
    padding-left:890px;
    color:white;
    }
    
    
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="images/school-logo-design-template-free-vector.jpg" alt="Logo">
<h1 style="color: red;">STUDENT MANAGEMENT SYSTEM</h1>       
<h2 class="h2" style="color: red;"><a href="#">About us</a></h2>




 </div>
        <nav class="navbar">
        
        </nav>
    </header>

    <main>
        <div class="background-container">
            <img src="images/1492060262phppReIXX_g.jpg" alt="Main Image" class="background-image">
            <div class="content">
                <h2>Welcome:GUEST</h2>
                <button onclick="window.location.href='index.jsp'">Register</button>
             <p>Already have an account? <a href="Login.jsp">Login here</a></p>
                
            </div>
            <div class="content1">
                <h2>Welcome:GUEST</h2>
                <button onclick="window.location.href='Login.jsp'">Login</button>
                
                <p>Don't have an account? <a href="index.jsp">Register</a></p>
                
            </div>
        </div>

        <!-- Add course cards below the image -->
        <div class="course-section">
            <h2>Our Courses</h2>
            <div class="card-row">
                <div class="card">
                    <h3>MBA</h3>
                    <p>Master of Business Administration: A comprehensive program to develop managerial skills and business acumen.</p>
                </div>
                <div class="card">
                    <h3>MCA</h3>
                    <p>Master of Computer Applications: Advanced course in computer science and applications.</p>
                </div>
                <div class="card">
                    <h3>BTech</h3>
                    <p>Bachelor of Technology: Undergraduate program in engineering and technology.</p>
                </div>
            </div>
            <div class="card-row">
                <div class="card">
                    <h3>BBA</h3>
                    <p>Bachelor of Business Administration: Undergraduate program focusing on business management and administration.</p>
                </div>
                <div class="card">
                    <h3>BCA</h3>
                    <p>Bachelor of Computer Applications: Undergraduate program in computer applications and software development.</p>
                </div>
                <div class="card">
                    <h3>MTech</h3>
                    <p>Master of Technology: Advanced course in engineering and technology.</p>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <p>&copy; 2025 Your Web Application. All rights reserved.</p>
    </footer>
</body>
</html>

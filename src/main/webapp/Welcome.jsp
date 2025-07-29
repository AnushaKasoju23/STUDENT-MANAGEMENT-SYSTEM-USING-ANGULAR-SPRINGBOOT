
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100%;
            background-color: #f0f0f0;
        }
 
        .header-container {
            display: flex;
            justify-content: flex-start;
            align-items: center;
            padding: 10px 20px;
            background-color: #800080;
            color: white;
        }

        .custom-logo-img {
            height: 70px;
            margin-right: 20px;
        }

        .logo-title-container {
            display: flex;
            justify-content: flex-start;
            align-items: center;
        }

        .top-nav {
            display: flex;
            justify-content: flex-end;
            background-color: #800080;
            color: white;
            padding: 10px 20px;
            margin-top: 10px; /* Added margin to move it down */
        }

        .nav-right ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
            align-items: center;
        }

        .nav-right ul li {
            margin-left: 15px;
        }

        .nav-right ul li a {
            color: white;
            text-decoration: none;
        }

        .content-container {
            display: flex; /* Use flexbox to place sidebar and content side by side */
        }

        .left-sidebar {
            width: 250px;
            background-color: #800080;
            padding: 15px;
            height: calc(100vh - 150px); /* Adjust height to fit the remaining space */
            position: sticky;
            top: 150px; /* Position below the header */
        }

        .left-sidebar ul {
            list-style-type: none;
            padding: 5px;
        }

        .left-sidebar ul li a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            padding: 5px 5px;
        }

        .left-sidebar ul li {
            margin-bottom: 30px; /* Increased margin for more space between items */
        }

        .main-content {
            flex-grow: 1; /* Take up the remaining space */
            padding: 20px;
            background-color: #fff;
            margin-top: 10px;
        }

        .background-image {
            width: 100%;
            height: 100%;
            display: block;
        }

        .slogan {
            position: absolute;
            top: 70%; /* Adjust the value to position the slogan vertically */
            left: 60%;
            transform: translate(-50%, -50%);
            color: black;
            font-size: 35px;
            font-weight: bolder;
            padding: 10px 20px;
            border-radius: 5px;
        }

        /* Logout Popup */
        .logout-popup {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
            display: none;
            width: 300px;
        }

        .logout-popup h3 {
            margin-bottom: 15px;
            color: #333;
        }

        .popup-buttons {
            display: flex;
            justify-content: space-around;
            margin-top: 15px;
        }

        .popup-btn {
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
        }

        .confirm-btn {
            background: #EF4444;
            color: white;
        }

        /* Logout Button */
        .logout-btn {
            background: #EF4444;
            color: white;
            padding: 8px 18px;
            text-decoration: none;
            font-weight: bold;
            border-radius: 6px;
            transition: 0.3s;
            cursor: pointer;
        }

        .logout-btn:hover {
            background: #DC2626;
        }

        .cancel-btn {
            background: #374151;
            color: white;
        }

        .popup-btn:hover {
            opacity: 0.8;
        }

        /* Overlay */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.4);
            display: none;
        }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #333;
            color: white;
            position: relative;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="header-container">
        <div class="logo-title-container">
            <img src="images/school-logo-design-template-free-vector.jpg" alt="Logo" class="custom-logo-img"/>
            <h1 class="custom-title" style="margin: 0;">STUDENT MANAGEMENT SYSTEM</h1>
        </div>
    </div>

    <nav class="top-nav">
        <div class="nav-right">
            <ul>
                <li>
                    <h3>Welcome, <%=session.getAttribute("username")%>!</h3>
                </li>
                <li>
                    <button class="logout-btn" onclick="showLogoutPopup()">Logout</button>
                </li>
            </ul>
        </div>
    </nav>

    <div class="content-container">
        <aside class="left-sidebar">
            <ul>
                <li><a href="ProfileServlet"> My Profile</a></li>
                <li><a href="ListofStudentController">List of students</a></li>
                <li><a href="getStudent.jsp">Get Student by ID</a></li>
                <li><a href="deleteform1.jsp">Delete Student by ID</a></li>
                <li><a href="updateform.jsp">Update Student by ID</a></li>
            </ul>
        </aside>

        <main class="main-content">
            <img src="images/1492060262phppReIXX_g.jpg" alt="Main Image" class="background-image">
            <div class="slogan">Empowering Minds, Shaping Futures</div>
        </main>
    </div>
    <div class="overlay" id="overlay"></div>
    <div class="logout-popup" id="logoutPopup">
        <h3>Are you sure you want to logout?</h3>
        <div class="popup-buttons">
            <button class="popup-btn confirm-btn" onclick="logout()">Yes</button>
            <button class="popup-btn cancel-btn" onclick="closeLogoutPopup()">No</button>
        </div>
    </div>

    <script>
        // Show Logout Popup
        function showLogoutPopup() {
            document.getElementById("logoutPopup").style.display = "block";
            document.getElementById("overlay").style.display = "block";
        }

        // Close Logout Popup
        function closeLogoutPopup() {
            document.getElementById("logoutPopup").style.display = "none";
            document.getElementById("overlay").style.display = "none";
        }

        // Logout Function
        function logout() {
            window.location.href = "Logout"; // Redirect to logout servlet or page
        }
    </script>
    <footer>
        <p>&copy; 2025 Student Management System. All rights reserved.</p>
    </footer>
</body>
</html>

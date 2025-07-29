<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html lang="en"> -->
<!-- <head> -->
<!--     <meta charset="UTF-8"> -->
<!--     <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!--     <title>Student Management</title> -->
<!--     <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> -->
<!--     <style> -->
/*     /* Reset and Global Styles */ */
/*     * { */
/*         margin: 0; */
/*         padding: 0; */
/*         box-sizing: border-box; */
/*         font-family: 'Poppins', sans-serif; */
/*     } */

/*     body { */
/*         background: #f4f4f4; */
/*     } */

/*     /* Container */ */
/*     .container { */
/*         display: flex; */
/*         flex-direction: column; */
/*         height: 100vh; */
/*     } */

/*     /* Top Navbar */ */
/*     .topnav { */
/*         display: flex; */
/*         align-items: center; */
/*         justify-content: space-between; */
/*         background: linear-gradient(45deg, #1E3A8A, #2563EB); */
/*         color: white; */
/*         padding: 15px 20px; */
/*         box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2); */
/*     } */

/*     /* Logo */ */
/*     .logo-container { */
/*         display: flex; */
/*         align-items: center; */
/*     } */

/*     .logo { */
/*         height: 50px; */
/*         margin-right: 10px; */
/*     } */

/*     .topnav h1 { */
/*         font-size: 22px; */
/*         font-weight: bold; */
/*     } */

/*     /* Logout Button */ */
/*     .logout-btn { */
/*         background: #EF4444; */
/*         color: white; */
/*         padding: 8px 18px; */
/*         text-decoration: none; */
/*         font-weight: bold; */
/*         border-radius: 6px; */
/*         transition: 0.3s; */
/*         cursor: pointer; */
/*     } */

/*     .logout-btn:hover { */
/*         background: #DC2626; */
/*     } */

/*     /* Layout Wrapper */ */
/*     .layout { */
/*         display: flex; */
/*         flex: 1; */
/*     } */

/*     /* Sidebar */ */
/*     .sidebar { */
/*         background: #1F2937; */
/*         color: white; */
/*         width: 250px; */
/*         padding-top: 20px; */
/*         min-height: 100%; */
/*         position: relative; */
/*         box-shadow: 2px 0px 6px rgba(0, 0, 0, 0.2); */
/*     } */

/*     .sidebar ul { */
/*         list-style: none; */
/*         padding: 0; */
/*     } */

/*     .sidebar ul li { */
/*         padding: 15px 20px; */
/*         text-align: left; */
/*         border-bottom: 1px solid rgba(255, 255, 255, 0.1); */
/*     } */

/*     .sidebar ul li a { */
/*         color: white; */
/*         text-decoration: none; */
/*         font-weight: 500; */
/*         display: block; */
/*         transition: 0.3s; */
/*     } */

/*     .sidebar ul li a:hover { */
/*         background: #374151; */
/*         padding-left: 10px; */
/*         border-radius: 5px; */
/*     } */

/*     /* Main Content */ */
/*     .main-content { */
/*         flex: 1; */
/*         padding: 30px; */
/*         text-align: center; */
/*         display: flex; */
/*         flex-direction: column; */
/*         justify-content: center; */
/*         align-items: center; */
/*     } */

/*     .main-content h2 { */
/*         font-size: 26px; */
/*         color: #333; */
/*         margin-bottom: 20px; */
/*     } */

/*     .main-img { */
/*         width: 80%; */
/*         max-width: 600px; */
/*         border-radius: 10px; */
/*         box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); */
/*     } */

/*     /* Logout Popup */ */
/*     .logout-popup { */
/*         position: fixed; */
/*         top: 50%; */
/*         left: 50%; */
/*         transform: translate(-50%, -50%); */
/*         background: white; */
/*         padding: 20px; */
/*         border-radius: 10px; */
/*         box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3); */
/*         text-align: center; */
/*         display: none; */
/*         width: 300px; */
/*     } */

/*     .logout-popup h3 { */
/*         margin-bottom: 15px; */
/*         color: #333; */
/*     } */

/*     .popup-buttons { */
/*         display: flex; */
/*         justify-content: space-around; */
/*         margin-top: 15px; */
/*     } */

/*     .popup-btn { */
/*         padding: 8px 15px; */
/*         border: none; */
/*         border-radius: 5px; */
/*         cursor: pointer; */
/*         font-size: 14px; */
/*         font-weight: bold; */
/*     } */

/*     .confirm-btn { */
/*         background: #EF4444; */
/*         color: white; */
/*     } */

/*     .cancel-btn { */
/*         background: #374151; */
/*         color: white; */
/*     } */

/*     .popup-btn:hover { */
/*         opacity: 0.8; */
/*     } */

/*     /* Overlay */ */
/*     .overlay { */
/*         position: fixed; */
/*         top: 0; */
/*         left: 0; */
/*         width: 100%; */
/*         height: 100%; */
/*         background: rgba(0, 0, 0, 0.4); */
/*         display: none; */
/*     } */
<!--     </style>  -->
<!-- </head> -->
<!-- <body> -->

<!--     <div class="container"> -->
<!--         Top Navbar -->
<!--         <div class="topnav"> -->
<!--             <div class="logo-container"> -->
<!--                 <img src="logo.png" alt="Logo" class="logo"> -->
<!--                 <h1>Student Management</h1> -->
<!--             </div> -->
<!--             <button class="logout-btn" onclick="showLogoutPopup()">Logout</button> -->
<!--         </div> -->

<!--         Layout Wrapper -->
<!--         <div class="layout"> -->
<!--             Sidebar -->
<!--             <div class="sidebar"> -->
<!--                 <ul> -->
<!-- <!--                     <li><a href="myprofile">👤 My Profile</a></li> --> -->
<!--                     <li><a href="AddCourse.jsp">📚 Add Course Details</a></li> -->
<!--                     <li><a href="DeleteAccount.jsp">🗑 Delete Account</a></li> -->
<!--                     <li><a href="appinfo.jsp">ℹ App Info</a></li> -->
<!--                 </ul> -->
<!--             </div> -->

<!--             Main Content -->
<!--             <div class="main-content"> -->
<%--                 <h2>Welcome, <%=session.getAttribute("studentname")%></h2> --%>
<!--                 <img src="student-management.jpg" alt="Student Management" class="main-img"> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->

<!--     Logout Popup -->
<!--     <div class="overlay" id="overlay"></div> -->
<!--     <div class="logout-popup" id="logoutPopup"> -->
<!--         <h3>Are you sure you want to logout?</h3> -->
<!--         <div class="popup-buttons"> -->
<!--             <button class="popup-btn confirm-btn" onclick="logout()">Yes</button> -->
<!--             <button class="popup-btn cancel-btn" onclick="closeLogoutPopup()">No</button> -->
<!--         </div> -->
<!--     </div> -->

<!--     <script> -->
//         // Show Logout Popup
//         function showLogoutPopup() {
//             document.getElementById("logoutPopup").style.display = "block";
//             document.getElementById("overlay").style.display = "block";
//         }

//         // Close Logout Popup
//         function closeLogoutPopup() {
//             document.getElementById("logoutPopup").style.display = "none";
//             document.getElementById("overlay").style.display = "none";
//         }

//         // Logout Function
//         function logout() {
//             window.location.href = "logout"; // Redirect to logout servlet or page
//         }
<!--     </script> -->

<!-- </body> -->
<!-- </html> -->
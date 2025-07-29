<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
         <link rel="stylesheet" href="css1.css"> 
</head>
<body>
 <% String error = request.getParameter("error"); %>
    <% if (error != null) { %>
        <p style="color:red;"><%= error %></p>
    <% } %>
<div class="container-fluid pad">
    <div class="row">
        <div class="col-md-4 center-container">
            <div class="form-container">
                <form name="regi" method="post" id="regi" action="Login" onsubmit="return verify()">
                    <h2 class="form-subtitle">LOGIN PAGE</h2>
                    <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-input" placeholder="Enter your email">
                    <div id="emailError" class="error"></div>
                    
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-input" placeholder="Enter your password">
                    <div id="passwordError" class="error"></div>
                    
                    <button type="submit" class="form-button">Login</button>
                    <p class="form-text">Don't have an account? <a href="index.jsp" class="form-link">Register here</a>.</p>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
document.getElementById("email").addEventListener('input', validateEmail);
document.getElementById("password").addEventListener('input', validatePassword);

function validateEmail(event) {
    let email = event.target.value;
    let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(email)) {
        document.getElementById("emailError").textContent = "****invalid email address****";
        document.getElementById("emailError").style.color = "red";
    } else {
        document.getElementById("emailError").textContent = "";
    }
}

function validatePassword(event) {
    let password = event.target.value;
    if (password === "") {
        document.getElementById("passwordError").textContent = "**Password is Mandatory**";
        document.getElementById("passwordError").style.color = "red";
    } else if (!/^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/.test(password)) {
        document.getElementById("passwordError").textContent = "**invaild password (must contain letters, Numbers, And special cg)**";
        document.getElementById("passwordError").style.color = "red";
    } else {
        document.getElementById("passwordError").textContent = "";
    }
}
function verify() {
    validateEmail({target: document.getElementById("email")});
    validatePassword({target: document.getElementById("password")});
    return document.getElementById("emailError").textContent === "" && document.getElementById("passwordError").textContent === "";
}
</script>
<% String errorMessage = (String) request.getAttribute("errorMessage"); %>
<% if (errorMessage != null) { %>
    <div class="error"><%= errorMessage %></div>
<% } %>
</body>
</html>

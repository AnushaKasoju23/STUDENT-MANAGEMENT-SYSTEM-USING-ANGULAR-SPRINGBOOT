<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="css1.css"> 
    
    <title>Registration Form</title>
</head>
<body>
<div class="container-fluid pad">
    <div class="row">
        <div class="col-md-4 center-container">
            <div class="form-container">
                <form name="register" method="post" id="register" action="Register" onsubmit="return verifyRegistration()">
                    <h2 class="form-subtitle">REGISTER PAGE</h2>
                    
                    <label for="username" class="form-label">User-name</label>
                    <input type="text" id="username" name="username" class="form-input" placeholder="Enter your username">
                    <div id="usernameError" class="error"></div>

                     <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-input" placeholder="Enter your email">
                    <div id="emailError" class="error"></div>
                    
                    <label for="branch" class="form-label">Branch</label>
                    <select id="branch" name="branch" class="form-input">
                    <option value="" disabled selected>Select Branch</option>
                    
                          <option value="BCA">BCA</option>
                            <option value="BBA">BBA</option>
                           <option value="B.Tech">B.Tech</option>
                             <option value="MBA">MBA</option>
                               <option value="MCA">MCA</option>
                           <option value="M.Tech">M.Tech</option>
                    </select>
                    <div id="branchError" class="error"></div>
                    
                    <label for="dob" class="form-label">Date of Birth</label>
                    <input type="date" id="dob" name="dob" class="form-input">
                    <div id="dobError" class="error"></div>

                <label for="phonenumber" class="form-label">Phone Number</label>
          <input type="tel" id="phonenumber" name="phonenumber" class="form-input" placeholder="Enter your number">
          <span id="phonenumberError" class="error"></span>

                    <label for="gender" class="form-label">Gender</label>
                    <input type="radio" id="male" name="gender" value="male">
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="female" >
                    <label for="female">Female</label>
                    <div id="genderError" class="error">
                    </div>
                     
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-input" placeholder="Enter your password">
                    <div id="passwordError" class="error"></div>

                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" class="form-input" placeholder="Confirm your password">
                    <div id="confirmPasswordError" class="error"></div>
                    
                    <button type="submit" class="form-button">Register</button>
                    <p class="form-text">Already have an account? <a href="Login.jsp" class="form-link">Login here</a>.</p>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
document.getElementById("username").addEventListener('input', validateUsername);
document.getElementById("branch").addEventListener('change', validateBranch);
document.getElementById("dob").addEventListener('input', validateDOB);
document.getElementById("phonenumber").addEventListener('input', validatephonenumber);

document.getElementById("email").addEventListener('input', validateEmail);
document.getElementById("password").addEventListener('input', validatePassword);
document.getElementById("confirmPassword").addEventListener('input', validateConfirmPassword);

function validateUsername(event) {
    let username = event.target.value;
    if (username === "") {
        document.getElementById("usernameError").textContent = "**Username is mandatory**";
        document.getElementById("usernameError").style.color = "red";
    } else if (!/^[a-zA-Z]+$/.test(username)) {
        document.getElementById("usernameError").textContent = "**Invalid username (only letters are allowed)**";
        document.getElementById("usernameError").style.color = "red";
    } else {
        document.getElementById("usernameError").textContent = "";
    }
}

function validateBranch(event) {
    let branch = event.target.value;
    if (branch === "") {
        document.getElementById("branchError").textContent = "**Branch selection is mandatory**";
        document.getElementById("branchError").style.color = "red";
    } else {
        document.getElementById("branchError").textContent = "";
    }
}

function validateDOB(event) {
    let dob = event.target.value;
    if (dob === "") {
        document.getElementById("dobError").textContent = "**Date of Birth is mandatory**";
        document.getElementById("dobError").style.color = "red";
    } else {
        document.getElementById("dobError").textContent = "";
    }
}

function validateEmail(event) {
    let email = event.target.value;
    let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (email === "") {
        document.getElementById("emailError").textContent = "****Email address is mandatory****";
        document.getElementById("emailError").style.color = "red";
    } else if (!emailPattern.test(email)) {
        document.getElementById("emailError").textContent = "****Invalid email address****";
        document.getElementById("emailError").style.color = "red";
    } else {
        document.getElementById("emailError").textContent = "";
    }
}

function validatephonenumber(event) {
    let phoneNumber = event.target.value;
    let phonePattern = /^[0-9]{10}$/;
    if (phoneNumber === "") {
        document.getElementById("phonenumberError").textContent = "****Phone number is mandatory****";
        document.getElementById("phonenumberError").style.color = "red";
    } else if (!phonePattern.test(phoneNumber)) {
        document.getElementById("phonenumberError").textContent = "****Invalid phone number****";
        document.getElementById("phonenumberError").style.color = "red";
    } else {
        document.getElementById("phonenumberError").textContent = "";
    }
}


document.getElementById("phonenumber").addEventListener('input', validatephonenumber);


function validateGender() {
    let gender = document.querySelector('input[name="gender"]:checked');
    if (!gender) {
        document.getElementById("genderError").textContent = "**Gender selection is mandatory**";
        document.getElementById("genderError").style.color = "red";
    } else {
        document.getElementById("genderError").textContent = "";
    }
}

function validatePassword(event) {
    let password = event.target.value;
    if (password === "") {
        document.getElementById("passwordError").textContent = "**Password is mandatory**";
        document.getElementById("passwordError").style.color = "red";
    } else if (!/^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/.test(password)) {
        document.getElementById("passwordError").textContent = "**Invalid password (must contain letters, numbers, and special characters)**";
        document.getElementById("passwordError").style.color = "red";
    } else {
        document.getElementById("passwordError").textContent = "";
    }
}

function validateConfirmPassword(event) {
    let password = document.getElementById("password").value;
    let confirmPassword = event.target.value;
    if (confirmPassword === "") {
        document.getElementById("confirmPasswordError").textContent = "**Confirm password is mandatory**";
        document.getElementById("confirmPasswordError").style.color = "red";
    } else if (confirmPassword !== password) {
        document.getElementById("confirmPasswordError").textContent = "**Passwords do not match**";
        document.getElementById("confirmPasswordError").style.color = "red";
    } else {
        document.getElementById("confirmPasswordError").textContent = "";
    }
}

function verifyRegistration() {
    validateUsername({target: document.getElementById("username")});
    validateBranch({target: document.getElementById("branch")});
    validatephonenumber({target: document.getElementById("phonenumber")});
    validateDOB({target: document.getElementById("dob")});
    validateEmail({target: document.getElementById("email")});
    validateGender();
    validatePassword({target: document.getElementById("password")});
    validateConfirmPassword({target: document.getElementById("confirmPassword")});
    return document.getElementById("usernameError").textContent === "" &&
           document.getElementById("branchError").textContent === "" &&
           document.getElementById("phonenumberError").textContent === "" &&
           document.getElementById("dobError").textContent === "" &&
           document.getElementById("emailError").textContent === "" &&
           document.getElementById("genderError").textContent === "" &&
           document.getElementById("passwordError").textContent === "" &&
           document.getElementById("confirmPasswordError").textContent === "";
}
</script>
</body>
</html>

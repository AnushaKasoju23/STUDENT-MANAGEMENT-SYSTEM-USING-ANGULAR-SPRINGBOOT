
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        </head>
    
    <title>Update Student</title>
</head>
<body>
<div class="container-fluid pad">
    <div class="row">
        <div class="col-md-4 center-container">
            <div class="form-container">
                    <h2 class="form-subtitle">update the details</h2>
    <form action="UpdateStudentController" method="post">
    
                    <label for="id" class="form-label">Id </label>
                    <input type="text" id="id" name="id" class="form-input" placeholder="Enter your id">
    
    
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
        <input type="submit" value="Update">
    </form>
    </div>
        </div>
        </div>
        </div>
    
    
</body>
</html>
    


<%@ page import="com.vcube.Model.RegisterModel" %>
<%@ page session="true" %>
<%
    RegisterModel user = (RegisterModel) session.getAttribute("loggedInUser");
    if (user == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
</head>
<body>
    <h2>Edit Profile</h2>
    <form action="UpdateStudentController" method="post">
        <input type="hidden" name="id" value="<%= user.getId() %>">
        Name: <input type="text" name="username" value="<%= user.getUsername() %>"><br>
        Email: <input type="email" name="email" value="<%= user.getEmail() %>"><br>
        Branch: <input type="text" name="branch" value="<%= user.getBranch() %>"><br>
        Phone Number: <input type="text" name="phonenumber" value="<%= user.getPhonenumber() %>"><br>
        Date of Birth: <input type="date" name="dob" value="<%= user.getDob() %>"><br>
        Gender: 
        <select name="gender">
            <option value="Male" <%= user.getGender().equals("Male") ? "selected" : "" %>>Male</option>
            <option value="Female" <%= user.getGender().equals("Female") ? "selected" : "" %>>Female</option>
        </select><br>
        <input type="submit" value="Update Profile">
    </form>
</body>
</html>

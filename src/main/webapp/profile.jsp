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
    <title>My Profile</title>
</head>
<body>
    <h2>My Profile</h2>
    <p><strong>Name:</strong> <%= user.getUsername() %></p>
    <p><strong>Email:</strong> <%= user.getEmail() %></p>
    <p><strong>Branch:</strong> <%= user.getBranch() %></p>
    <p><strong>Phone:</strong> <%= user.getPhonenumber() %></p>
    <p><strong>Date of Birth:</strong> <%= user.getDob() %></p>
    <p><strong>Gender:</strong> <%= user.getGender() %></p>
    <a href="editProfile.jsp"><button>Edit Profile</button></a>
</body>
</html>

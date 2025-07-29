
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Result</title>
</head>
<body>
    <h2>Update Result</h2>
    <%
        String updateStatus = (String) request.getAttribute("updateStatus");
        if ("SUCCESS".equals(updateStatus)) {
    %>
        <p>The student has been successfully updated.</p>
    <% } else if (updateStatus != null && updateStatus.startsWith("ERROR:")) {  // Check for errors
    %>
        <p style="color: red;"><%= updateStatus %></p>  <%-- Display specific error --%>
    <% } else { %>
        <p style="color: red;">Failed to update the student.  <%= updateStatus != null ? updateStatus : "" %></p> <%-- More generic error, include the status if available --%>
    <% } %>
    <a href="Welcome.jsp">Back to Welcome</a> <%-- Provide a way to go back --%>
</body>
</html>
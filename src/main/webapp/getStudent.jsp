<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vcube.Model.RegisterModel" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" 
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<style>
    body {
        text-align: center;
    }
    .table-container {
        display: flex;
        justify-content: center;
        margin-top: 30px;
    }
    table {
        margin-left: auto;
        margin-right: auto;
    }
    .table-custom {
        width: 60%; 
        padding-left: 30px;
    }
</style>
<body>
    <h2>Find Student Details</h2>
    
    <form action="GetStudentByIdController" method="get">
        <label for="id">Enter Student ID:</label>
        <input type="text" id="id" name="id" required>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <%
        List<RegisterModel> students = (List<RegisterModel>) request.getAttribute("students");
        String showModal = (String) request.getAttribute("showModal");
        String error = (String) request.getAttribute("error");
    %>

    <% if (error != null) { %>
    <p style="color: red;"><%= error %></p>
    <% } %>

    <% if (students != null && !students.isEmpty()) { %>
    <div class="table-container">
        <table border="2" class="table table-striped table-custom">
            <thead class="thead-dark">
                <tr class="bg-color">
                    <th>ID</th>
                    <th>User-name</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Branch</th>
                    <th>DOB</th>
                    <th>Gender</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (RegisterModel student : students) {
                %>
                <tr>
                    <td><%= student.getId() %></td>
                    <td><%= student.getUsername() %></td>
                    <td><%= student.getPhonenumber() %></td>
                    <td><%= student.getEmail() %></td>
                    <td><%= student.getBranch() %></td>
                    <td><%= student.getDob() %></td>
                    <td><%= student.getGender() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
    <% } else if ("true".equals(showModal)) { %>
    <p>No student found with the given ID.</p>
    <% } %>

    <a href="Welcome.jsp" class="btn btn-secondary">Back to Home</a>
</body>
</html>

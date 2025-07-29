<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.vcube.Model.RegisterModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
       padding-left:30px;
    }

</style>
<body>
    <h1>LIST OF ALL STUDENTS</h1>


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
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<RegisterModel> list = (List<RegisterModel>) request.getAttribute("allstudents");
                    if (list != null && !list.isEmpty()) {
                        for (RegisterModel student : list) {
                %>
                            <tr>
                                <td><%= student.getId() %></td>
                                <td><%= student.getUsername() %></td>
                                <td><%= student.getPhonenumber() %></td>
                                <td><%= student.getEmail() %></td>
                                <td><%= student.getBranch() %></td>
                                <td><%= student.getDob() %></td>
                                <td><%= student.getGender() %></td>
                                <td><%= student.getPassword() %></td>
                            </tr>
                <%
                        }
                    } else {
                        %>
                            <tr>
                                <td colspan="8">No students found.</td>
                            </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>

    <br>
    <h3><a href="Welcome.jsp">Back to Home</a></h3>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <style>
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #dff0d8; /* Light green background */
            text-align: center;
            font-family: Arial, sans-serif;
        }
        .heading {
            color: green; /* Heading color */
        }
        .message {
            color: green; /* Paragraph color */
        }
        .modal-fail {
            color: red; /* Paragraph color for failure */
        }
    </style>
    <title>Update Result</title>
</head>
<body>
 <div class="container">
        <div>
            <h1 class="heading">Update Result</h1>
            <p class="<%= request.getAttribute("updateStatus") != null && "success".equals(request.getAttribute("updateStatus")) ? "message" : "modal-fail" %>">
                <%= request.getAttribute("updateStatus") != null && "success".equals(request.getAttribute("updateStatus")) ? "The student has been updated successfully!" : "Failed to update the student." %>
            </p>
        </div>
    </div>
</body>
</html>

package com.vcube.controller;

import java.io.IOException;

import com.vcube.Dao.StudentDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteStudentByIdController")
public class DeleteStudentByIdController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr = request.getParameter("id");
        String message = "";
        String statusClass = "";
        if (idStr != null && !idStr.isEmpty()) {
            try {
                int id = Integer.parseInt(idStr);
                StudentDAO s = new StudentDAO();
                String deleteStatus = s.DeleteStudentById(id);
                if (deleteStatus.equals("success")) {
                    message = "The student has been deleted successfully.";
                    statusClass = "modal-success";
                } else {
                    message = "Failed to delete student.";
                    statusClass = "modal-fail";
                }
            } catch (NumberFormatException e) {
                message = "Invalid ID format.";
                statusClass = "modal-fail";
            }
        } else {
            message = "Invalid ID.";
            statusClass = "modal-fail";
        }
        request.setAttribute("message", message);
        request.setAttribute("statusClass", statusClass);
        RequestDispatcher rd = request.getRequestDispatcher("deleteform1.jsp");
        rd.forward(request, response);
    }
}

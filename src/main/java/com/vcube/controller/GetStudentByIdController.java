package com.vcube.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.vcube.Dao.StudentDAO;
import com.vcube.Model.RegisterModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/GetStudentByIdController")
public class GetStudentByIdController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newid = req.getParameter("id");
        if (newid != null && !newid.isEmpty()) {
            try {
                int newid1 = Integer.parseInt(newid);
                StudentDAO s = new StudentDAO();
                RegisterModel student = s.getStudentById(newid1);

                if (student != null) {
                    List<RegisterModel> students = new ArrayList<>();
                    students.add(student);
                    req.setAttribute("students", students);
                    req.setAttribute("showModal", "false");
                } else {
                    req.setAttribute("showModal", "true");
                }
                RequestDispatcher rd = req.getRequestDispatcher("getStudent.jsp");
                rd.forward(req, resp);
            } catch (NumberFormatException e) {
                req.setAttribute("error", "Invalid ID format.");
                req.setAttribute("showModal", "true");
                RequestDispatcher rd = req.getRequestDispatcher("getStudent.jsp");
                rd.forward(req, resp);
                e.printStackTrace();
            } catch (Exception e) {
                req.setAttribute("error", "An error occurred.");
                req.setAttribute("showModal", "true");
                RequestDispatcher rd = req.getRequestDispatcher("getStudent.jsp");
                rd.forward(req, resp);
                e.printStackTrace();
            }
        } else {
            req.setAttribute("error", "Invalid ID.");
            req.setAttribute("showModal", "true");
            RequestDispatcher rd = req.getRequestDispatcher("getStudent.jsp");
            rd.forward(req, resp);
        }
    }
}

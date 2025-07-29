package com.vcube.controller;

import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

import com.vcube.Dao.StudentDAO;
import com.vcube.Model.RegisterModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ListofStudentController")
public class ListofStudentController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        StudentDAO s = new StudentDAO();
        List<RegisterModel> allStudentsdata = s.getAllStudent();

        
        req.setAttribute("allstudents", allStudentsdata);
        RequestDispatcher rd = req.getRequestDispatcher("list_students.jsp");
        rd.forward(req, resp);
    }
} 

 
package com.vcube.controller;

import java.io.IOException;

import com.vcube.Dao.StudentDAO;
import com.vcube.Model.RegisterModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterController() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String branch = request.getParameter("branch");
        String phonenumber = request.getParameter("phonenumber");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");

        RegisterModel rm = new RegisterModel();
        rm.setUsername(username);
        rm.setEmail(email);
        rm.setGender(gender);
        rm.setBranch(branch);
        rm.setPhonenumber(phonenumber);
        rm.setDob(dob);
        rm.setPassword(password);
        StudentDAO rd = new StudentDAO();
        String status = rd.InsertData(rm);
        System.out.println(status);

        if(status.equalsIgnoreCase("SUCCESS")) {
            System.out.println("Data affected successfully");
            RequestDispatcher r = request.getRequestDispatcher("Login.jsp");
            r.forward(request, response); 
        } else {
            System.out.println("Something went wrong.......");
            RequestDispatcher r = request.getRequestDispatcher("index.jsp");
            r.forward(request, response);
        }
    }
}

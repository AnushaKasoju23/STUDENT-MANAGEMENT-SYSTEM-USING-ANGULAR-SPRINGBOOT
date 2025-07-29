package com.vcube.controller;

import java.io.IOException;

import com.vcube.Model.RegisterModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/UpdateStudentController")
public class UpdateStudentController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        RegisterModel user = (RegisterModel) session.getAttribute("loggedInUser");

        if (user == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        // Update user object
        user.setUsername(request.getParameter("username"));
        user.setEmail(request.getParameter("email"));
        user.setBranch(request.getParameter("branch"));
        user.setPhonenumber(request.getParameter("phonenumber"));
        user.setDob(request.getParameter("dob"));
        user.setGender(request.getParameter("gender"));

        session.setAttribute("loggedInUser", user);
        response.sendRedirect("profile.jsp");
    }
}

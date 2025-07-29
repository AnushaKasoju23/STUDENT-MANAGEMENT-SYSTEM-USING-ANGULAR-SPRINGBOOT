package com.vcube.controller;

import java.io.IOException;

import com.vcube.Dao.StudentDAO;
import com.vcube.Model.LoginModel;
import com.vcube.Model.RegisterModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        LoginModel loginModel = new LoginModel(email, password);
        StudentDAO studentDAO = new StudentDAO();
        RegisterModel user = studentDAO.SelectData(loginModel);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("loggedInUser", user);  // Store user in session
            session.setMaxInactiveInterval(30 * 60); // Session timeout 30 minutes

            response.sendRedirect("Welcome.jsp"); // Redirect to profile page
        } else {
            response.sendRedirect("login.jsp?error=Invalid email or password");
        }
    }
}

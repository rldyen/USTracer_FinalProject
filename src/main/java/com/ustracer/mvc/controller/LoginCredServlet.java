package com.ustracer.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustracer.mvc.bean.LoginCredBean;
import com.ustracer.mvc.dao.LoginCredDAO;

public class LoginCredServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginCredServlet() {
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		LoginCredBean logincredBean = new LoginCredBean();
		
		logincredBean.setEmail(email);
		logincredBean.setPassword(password);


		LoginCredDAO logincredDAO = new LoginCredDAO();
                                                        
		String userValidate = logincredDAO.authenticateUser(logincredBean);

		if(userValidate.equals("SUCCESS"))
         {
			request.setAttribute("email", email);
            request.getRequestDispatcher("/UserHomePage.jsp").forward(request, response);
         }
         else
         {
            request.setAttribute("errMessage", userValidate);
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
         }
	}

}
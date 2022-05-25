package com.ustracer.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustracer.mvc.bean.RegisterBean;
import com.ustracer.mvc.dao.RegisterDAO;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterServlet() {
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstname");
		String middleName = request.getParameter("middlename");
		String lastName = request.getParameter("lastname");
		String ID = request.getParameter("ID");
		String faculty = request.getParameter("faculty");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		RegisterBean registerBean = new RegisterBean();
		registerBean.setFirstName(firstName);
		registerBean.setMiddleName(middleName);
		registerBean.setLastName(lastName);
		registerBean.setID(ID);
		registerBean.setFaculty(faculty);
		registerBean.setEmail(email);
		registerBean.setPassword(password);

		RegisterDAO registerDAO = new RegisterDAO();

		String userRegistered = registerDAO.registerUser(registerBean);

		if(userRegistered.equals("SUCCESS"))
         {
            request.getRequestDispatcher("/RegisterSuccessful.jsp").forward(request, response);
         }
         else
         {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Register.jsp").forward(request, response);
         }							
	}

}

//TAPOS NAAA

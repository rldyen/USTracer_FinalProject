package com.ustracer.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustracer.mvc.bean.UpdateInfoBean;
import com.ustracer.mvc.dao.UpdateInfoDAO;

public class UpdateInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateInfoServlet() {
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstname");
		String middleName = request.getParameter("middlename");
		String lastName = request.getParameter("lastname");
		String faculty = request.getParameter("faculty");
		String email = request.getParameter("email");
		String ID = request.getParameter("ID");

		UpdateInfoBean updateinfoBean = new UpdateInfoBean();
		updateinfoBean.setFirstName(firstName);
		updateinfoBean.setMiddleName(middleName);
		updateinfoBean.setLastName(lastName);
		updateinfoBean.setFaculty(faculty);
		updateinfoBean.setEmail(email);
		updateinfoBean.setID(ID);

		UpdateInfoDAO updateinfoDAO = new UpdateInfoDAO();

		String userUpdated = updateinfoDAO.updateUser(updateinfoBean);

		if(userUpdated.equals("SUCCESS"))
         {                                
            request.getRequestDispatcher("/UserHomePage.jsp").forward(request, response);
         }
         else
         {
            request.setAttribute("errMessage", userUpdated);
            request.getRequestDispatcher("/UpdateInfo.jsp").forward(request, response);
         }
	}

}

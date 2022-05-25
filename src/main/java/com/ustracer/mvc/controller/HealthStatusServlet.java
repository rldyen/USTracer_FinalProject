package com.ustracer.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustracer.mvc.bean.HealthStatusBean;
import com.ustracer.mvc.dao.HealthStatusDAO;

public class HealthStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HealthStatusServlet() {
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status = request.getParameter("status");
		String Show_status = request.getParameter("show_status");
		String symptoms = request.getParameter("symptoms");
        String ID = request.getParameter("ID");

		HealthStatusBean healthstatusBean = new HealthStatusBean();
		healthstatusBean.setStatus(status);
		healthstatusBean.setShow_status(Show_status);
		healthstatusBean.setSymptoms(symptoms);
        healthstatusBean.setID(ID);

		HealthStatusDAO healthstatusdao = new HealthStatusDAO();

		String statusUpdated = healthstatusdao.HealthStatus(healthstatusBean);

		if(statusUpdated.equals("SUCCESS"))
         {                                
            request.getRequestDispatcher("/UserHomePage.jsp").forward(request, response);
         }
         else
         {
            request.setAttribute("errMessage", statusUpdated);
            request.getRequestDispatcher("/HealthStatus.jsp").forward(request, response);
         }
	}

}

package com.ustracer.mvc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustracer.mvc.bean.ThomasianTrackerBean;
import com.ustracer.mvc.dao.ThomasianTrackerDAO;

@WebServlet(name = "ThomasianTrackerServlet.java", urlPatterns = { "/ThomasianTrackerServlet.java" })
public class ThomasianTrackerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThomasianTrackerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ThomasianTrackerBean> listThomasian;
		try {
			listThomasian = ThomasianTrackerDAO.listAllThomasian();
			request.setAttribute("listThomasian", listThomasian);
        	RequestDispatcher dispatcher = request.getRequestDispatcher("ThomasianTracker.jsp");
        	dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

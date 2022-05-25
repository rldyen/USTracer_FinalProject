package com.ustracer.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustracer.mvc.bean.CovaxProfileBean;
import com.ustracer.mvc.dao.CovaxProfileDAO;

public class CovaxProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CovaxProfileServlet() {
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Covaxid = request.getParameter("CovaxID");
        String ID = request.getParameter("ID");
        String fnamevax = request.getParameter("FNameVAX");
		String mnamevax = request.getParameter("MNameVAX");
		String lnamevax = request.getParameter("LNameVAX");
        String date_of_birth = request.getParameter("date_of_birth");
		String vaxsite = request.getParameter("vax_site");
        String allergies = request.getParameter("allergies");
		String vaxbrand = request.getParameter("vax_brand");
		String emailvax = request.getParameter("emailvax");

		CovaxProfileBean covaxprofileBean = new CovaxProfileBean();	
        covaxprofileBean.setcovaxID(Covaxid);
        covaxprofileBean.setID(ID);
        covaxprofileBean.setFirstName(fnamevax);
		covaxprofileBean.setMiddleName(mnamevax);
		covaxprofileBean.setLastName(lnamevax);
		covaxprofileBean.setdateofbirth(date_of_birth);
		covaxprofileBean.setvaxSite(vaxsite);
        covaxprofileBean.setallergies(allergies);
		covaxprofileBean.setvaxBrand(vaxbrand);
        covaxprofileBean.setEmail(emailvax);

		CovaxProfileDAO covaxprofileDAO = new CovaxProfileDAO();

		String profRegistered = covaxprofileDAO.CovaxProf(covaxprofileBean);

		if(profRegistered.equals("SUCCESS"))
         {          
            request.getRequestDispatcher("/UserHomePage.jsp").forward(request, response);
         }
         else
         {
            request.setAttribute("errMessage", profRegistered);
            request.getRequestDispatcher("/CovaxProfile.jsp").forward(request, response);
         }							
	}

}

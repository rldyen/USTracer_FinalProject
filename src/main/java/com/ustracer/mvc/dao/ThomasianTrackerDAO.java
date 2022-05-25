package com.ustracer.mvc.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ustracer.mvc.util.DBConnection;
import com.ustracer.mvc.bean.ThomasianTrackerBean;

public class ThomasianTrackerDAO {
	    public static List<ThomasianTrackerBean> listAllThomasian() throws SQLException {
            Connection conn = null;
		    conn = DBConnection.createConnection();
            List<ThomasianTrackerBean> Tracker = new ArrayList<>();

            String sql = "SELECT Fname, Mname, Lname, status, Faculty FROM AccountsTbl, HealthStatusTbl; ";

            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                String firstname = resultSet.getString("firstName");
                String middlename = resultSet.getString("middleName");
                String lastname = resultSet.getString("lastName");
                String Status = resultSet.getString("status");
                String Faculty = resultSet.getString("faculty");
                
                ThomasianTrackerBean thomasianTracker = new ThomasianTrackerBean(firstname, middlename, lastname, Status, Faculty);
                
                Tracker.add(thomasianTracker);
            }
            
            resultSet.close();
            statement.close();
            
            return Tracker;
        }
}


   



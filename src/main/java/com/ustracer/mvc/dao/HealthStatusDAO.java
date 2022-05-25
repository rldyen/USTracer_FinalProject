package com.ustracer.mvc.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import com.ustracer.mvc.util.DBConnection;
import com.ustracer.mvc.bean.HealthStatusBean;

public class HealthStatusDAO {
    
    public String HealthStatus(HealthStatusBean healthstatusbean) {
        String ID = healthstatusbean.getID();
        String status = healthstatusbean.getStatus(); 
        //String show_status = healthstatusbean.getShow_status();
        //String symptoms = healthstatusbean.getSymptoms();

		Connection conn = null;
		PreparedStatement preparedStatement = null;

        try{
            conn = DBConnection.createConnection();
            
            String query = "UPDATE HealthStatusTbl SET status = ? WHERE ID = '" + ID + "'";
            
            
            preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, status);

            int i = preparedStatement.executeUpdate();
            
            if (i!= 0){
				return "SUCCESS";
			}


        }
        catch (SQLException e) {
			e.printStackTrace();
			
			if (e instanceof SQLIntegrityConstraintViolationException) {
				return "Error";
			}
		}

        

       return ""; 
    }
}
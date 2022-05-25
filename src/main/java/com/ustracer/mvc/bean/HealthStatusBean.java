package com.ustracer.mvc.bean;

public class HealthStatusBean {
    String status;
    String show_status;
    String symptoms;
    String ID;

    //Getters
    public String getStatus(){
        return status;
    }

    public String getShow_status(){
        return show_status;
    }

    public String getSymptoms(){
        return symptoms;
    }

    public String getID(){
        return ID;
    }

    //Setters
    public void setID(String ID) {
        this.ID = ID;
    }
    public void setStatus(String status){
        this.status = status;
    }

    public void setShow_status(String show_status){
        this.show_status = show_status;
    }

    public void setSymptoms(String symptoms){
        this.symptoms = symptoms;
    }

}
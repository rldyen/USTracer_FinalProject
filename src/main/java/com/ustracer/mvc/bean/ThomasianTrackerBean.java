package com.ustracer.mvc.bean;

public class ThomasianTrackerBean {
    private String firstName;
    private String middleName;
    private String lastName;
    private String status;
    private String showStatus;
    private String faculty;
    private String ID;

    public ThomasianTrackerBean(String firstName, String middleName, String lastName, String status, String faculty) {
        this.firstName=firstName;
        this.middleName=middleName;
        this.lastName=lastName;
        this.status=status;
        this.faculty=faculty;
    }
    //Getters
    public String getFirstName(){
        return firstName;
    }

    public String getMiddleName(){
        return middleName;
    }

    public String getLastName(){
        return lastName;
    }

    public String getID(){
        return ID;
    }

    public String getFaculty(){
        return faculty;
    }

    public String getStatus(){
        return status;
    }

    public String getShowStatus(){
        return showStatus;
    }


    //Setters
    public void setFirstName(String firstName){
        this.firstName = firstName;
    }

    public void setMiddleName(String middleName){
        this.middleName = middleName;
    }

    public void setLastName(String lastName){
        this.lastName = lastName;
    }

    public void setID(String ID){
        this.ID = ID;
    }

    public void setFaculty(String faculty){
        this.faculty= faculty;
    }

    public void setStatus (String status){
        this.status = status;
    }

    public void setShowStatus (String showStatus){
        this.showStatus = showStatus;
    }
}
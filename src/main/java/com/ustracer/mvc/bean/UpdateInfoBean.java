package com.ustracer.mvc.bean;

public class UpdateInfoBean {
    private String firstName;
    private String middleName;
    private String lastName;
    private String faculty;
    private String email;
    private String ID;

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

    public String getFaculty(){
        return faculty;
    }

    public String getEmail(){
        return email;
    }

    public String getID(){
        return ID;
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


    public void setFaculty(String faculty){
        this.faculty= faculty;
    }

    public void setEmail(String email){
        this.email = email;
    }

	public void setID(String ID) {
		this.ID = ID;
		
	}
}

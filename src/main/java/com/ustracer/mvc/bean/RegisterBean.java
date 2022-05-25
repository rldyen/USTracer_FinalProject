package com.ustracer.mvc.bean;

public class RegisterBean {
    private String firstName;
    private String middleName;
    private String lastName;
    private String ID;
    private String faculty;
    private String email;
    private String password;

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

    public String getEmail(){
        return email;
    }

    public String getPassword(){
        return password;
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

    public void setEmail(String email){
        this.email = email;
    }

    public void setPassword(String password){
        this.password = password;
    }
}

//TAPOS NAAAA

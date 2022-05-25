package com.ustracer.mvc.bean;

public class CovaxProfileBean {
    private String covaxID;
    private String ID;
    private String firstNameVax;
    private String middleNameVax;
    private String lastNameVax;
    private String dateofbirth;
    private String vaxSite;
    private String allergies;
    private String vaxBrand;
    private String emailVax;

    //Getter
    public String getcovaxID(){
        return covaxID;
    }
    public String getID(){
        return ID;
    }
    public String getFirstNameVax(){
        return firstNameVax;
    }

    public String getMiddleNameVax(){
        return middleNameVax;
    }

    public String getLastNameVax(){
        return lastNameVax;
    }

    public String getdateofbirth(){
        return dateofbirth;
    }

    public String getvaxSite(){
        return vaxSite;
    }
    
    public String getallergies(){
        return allergies;
    }

    public String getvaxBrand(){
        return vaxBrand;
    }

    public String getEmailVax(){
        return emailVax;
    }
    
    //Setter
    public void setcovaxID(String covaxID){
        this.covaxID = covaxID;
    }
    public void setID(String ID){
        this.ID = ID;
    }
    public void setFirstName(String firstNameVax){
        this.firstNameVax = firstNameVax;
    }

    public void setMiddleName(String middleNameVax){
        this.middleNameVax = middleNameVax;
    }

    public void setLastName(String lastNameVax){
        this.lastNameVax = lastNameVax;
    }
    public void setdateofbirth(String dateofbirth){
        this.dateofbirth = dateofbirth;
    }

    public void setvaxSite(String vaxSite){
        this.vaxSite = vaxSite;
    }

    public void setallergies(String allergies){
        this.allergies = allergies;
    }

    public void setvaxBrand(String vaxBrand){
        this.vaxBrand = vaxBrand;
    }

    public void setEmail(String emailVax){
        this.emailVax = emailVax;
    }

}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author evendm
 */
public class User {
    private String fullname;
    private String email;
    private String password;
    private int customer_id;
    
    public User() {
        fullname = null;
        email = null;
        password = null;
        customer_id = 0;
    }
    
    public void setFullname(String name){
        this.fullname = name;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public void setCustomerID(int id){
        customer_id = id;
    }
    
    public int getCustomerID(){
        return customer_id;
    }
    
    public boolean loggedIn(){
        return true;
    }
    
}

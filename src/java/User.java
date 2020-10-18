/**
 * Code adapted from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
 * @author Alisha Shewale/Meg Evenden
 */

public class User {
    private String fullname;
    private String email;
    private String password;
    private int customer_id;
    private boolean admin = false;
    
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
    
    public void setAdmin(){
        admin = true;
    }
    
    public int getCustomerID(){
        return customer_id;
    }
    
    public boolean loggedIn(){
        return true;
    }
    
    public boolean isAdmin(){
        return admin;
    }
    
}

/**
 * Code adapted from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
 * @author Alisha Shewale/Meg Evenden
 */

import java.sql.*;

public class UserDAO {
 
    public User checkLogin(String email, String password) throws SQLException,
            ClassNotFoundException {
        
        //get connection
        String jdbcURL = "jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false";
        String dbUser = "root";
        String dbPassword = "BWxcoQq7Um^9"; //this is a unique password
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        
        //sql query for customer 
        String sql = "SELECT * FROM Customer WHERE email_address = ? and initial_password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);
        ResultSet result = statement.executeQuery();
 
        User user = null;
        int customer_id;
 
        // there exists a customer with the given email and password
        if (result.next()) {
            customer_id = result.getInt(1);
            user = new User();
            user.setFullname(result.getString("client_name"));
            user.setEmail(email);
            user.setCustomerID(customer_id);
            if (email.equals("bethhairdress@gmail.com")){ //admin user
                user.setAdmin();
            }
        }
 
        connection.close();
 
        return user;
    }
}

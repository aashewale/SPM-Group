

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
 */

import java.sql.*;

public class UserDAO {
 
    public User checkLogin(String email, String password) throws SQLException,
            ClassNotFoundException {
        String jdbcURL = "jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false";
        String dbUser = "root";
        String dbPassword = "BWxcoQq7Um^9";
 
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        String sql = "SELECT * FROM Customer WHERE email_address = ? and initial_password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);
 
        ResultSet result = statement.executeQuery();
 
        User user = null;
        int customer_id;
 
        if (result.next()) {
            customer_id = result.getInt(1);
            user = new User();
            user.setFullname(result.getString("client_name"));
            user.setEmail(email);
            user.setCustomerID(customer_id);
        }
 
        connection.close();
 
        return user;
    }
}

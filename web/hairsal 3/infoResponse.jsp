<%-- 
    Document   : infoResponse
    Created on : 12/10/2020, 1:45:37 PM
    Author     : evendm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*"
        import = "java.sql.*"
        import = "java.util.*"
        import = "javax.sql.*"
        import = "java.sql.ResultSet"
        import = "java.sql.Statement"
        import = "java.sql.Connection"
        import = "java.sql.DriverManager"
        import = "java.sql.SQLException"
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Updated</title>
    </head>
    <body>
        <h1>Profile Information successfully updated</h1>
        <p> Return to <a href="http://localhost:8080/SPM-Group-project/hairsal%203/index.html">Home</a>
        <%
        Connection c = null;
        PreparedStatement ps = null;
        int customer_id = Integer.valueOf((String) session.getAttribute("customer_id"));
        String client_name = request.getParameter("first_name");
        String home_address = request.getParameter("address");
        String contact_number = request.getParameter("phone");
        String email_address = request.getParameter("email");
        String password = request.getParameter("password");
        String related_information = request.getParameter("related_information");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
            if (!client_name.equals("")) {
                ps = c.prepareStatement("UPDATE customer SET client_name = ? WHERE customer_id = ?");
                ps.setString(1, client_name);
                ps.setInt(2, customer_id);
                ps.executeUpdate();
            }
            if (!home_address.equals("")) {
                ps = c.prepareStatement("UPDATE customer SET home_address = ? WHERE customer_id = ?");
                ps.setString(1, home_address);
                ps.setInt(2, customer_id);
                ps.executeUpdate();
            }
            if (!email_address.equals("")) {
                ps = c.prepareStatement("UPDATE customer SET email_address = ? WHERE customer_id = ?");
                ps.setString(1, email_address);
                ps.setInt(2, customer_id);
                ps.executeUpdate();
            }
            if (!contact_number.equals("")) {
                ps = c.prepareStatement("UPDATE customer SET contact_number = ? WHERE customer_id = ?");
                ps.setString(1, contact_number);
                ps.setInt(2, customer_id);
                ps.executeUpdate();
            }
            if (!password.equals("")) {
                ps = c.prepareStatement("UPDATE customer SET initial_password = ? WHERE customer_id = ?");
                ps.setString(1, password);
                ps.setInt(2, customer_id);
                ps.executeUpdate();
            }
            if (!related_information.equals("")) {
                ps = c.prepareStatement("UPDATE customer SET related_information = ? WHERE customer_id = ?");
                ps.setString(1, related_information);
                ps.setInt(2, customer_id);
                ps.executeUpdate();
            }

        } catch (ClassNotFoundException e) {
            throw new SQLException("JDBC Driver not found.", e);
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                    ps = null;
                }
                if (c != null) {
                    c.close();
                    c = null;
                }
            } catch (SQLException e) {
                
            }
        }
        %>  
    </body>
</html>

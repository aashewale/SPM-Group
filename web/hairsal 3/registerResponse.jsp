<%-- 
    Document   : registerResponse
    Created on : 12/10/2020, 3:49:19 PM
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
        <title>Registration Successful</title>
    </head>
    <body>
        <h1>Successfully Registered </h1>
        <p> Return <a href="http://localhost:8080/SPM-Group-project/hairsal%203/index.html">Home</a></h1></p>
        <%
        Connection c = null;
        PreparedStatement ps = null;
        String client_name = request.getParameter("client_name");
        String home_address = request.getParameter("home_address");
        String contact_number = request.getParameter("phone");
        String email_address = request.getParameter("email");
        String password = request.getParameter("password");
        String related_information = request.getParameter("relevant_information");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
            ps = c.prepareStatement("INSERT into Customer(client_name, home_address, email_address, contact_number, initial_password, related_information) VALUES (?,?,?,?,?,?)"); //UPDATE
            ps.setString(1, client_name);
            ps.setString(2, home_address);
            ps.setString(3, email_address);
            ps.setString(4, contact_number);
            ps.setString(5, password);
            ps.setString(6, "");
            ps.executeUpdate();
            if (!related_information.equals("")) {
                ps = c.prepareStatement("UPDATE customer SET related_information = ? WHERE email_address = ?");
                ps.setString(1, related_information);
                ps.setString(2, email_address);
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

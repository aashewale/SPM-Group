<%-- 
    Document   : bookingResponse
    Created on : 09/10/2020, 3:57:00 PM
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
        <title>Booking Confirmation</title>
    </head>
    <body>
        <h1>Booking Confirmation:</h1>
        
        <%
        Connection c = null;
        PreparedStatement ps = null;
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String treatment = request.getParameter("treatment");
        String location = request.getParameter("location");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String note = request.getParameter("note");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
            ps = c.prepareStatement("insert into appointment(service_id, customer_id) values(?,?)");
            ps.setString(1, new_name);
            ps.setInt(2, new_charge);
            ps.executeUpdate();
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

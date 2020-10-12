<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
        PreparedStatement ps1 = null;
        PreparedStatement ps2 = null;
        ResultSet rs = null;
        int id = Integer.valueOf((String) session.getAttribute("customer_id"));
        String treatment = request.getParameter("treatment");
        String location = request.getParameter("location");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String message = request.getParameter("note");
        String appointment_time = date + " " + time;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
            String query = "SELECT serivce_id FROM Beauty_Care_Services WHERE service_name=?";
            ps1 = c.prepareStatement(query);
            ps1.setString(1, treatment);
            rs = ps1.executeQuery();
            ps2 = c.prepareStatement("insert into appointment(service_id, customer_id, appointment_time, message) values(?,?,?,?)");
            ps2.setInt(1, rs.getInt("service_id"));
            ps2.setInt(2, id);
            ps2.setString(3, appointment_time);
            ps2.setString(4, message);
            ps2.executeUpdate();
        } catch (ClassNotFoundException e) {
            throw new SQLException("JDBC Driver not found.", e);
        } finally {
            try {
                if (ps1 != null) {
                    ps1.close();
                    ps1 = null;
                }
                if (ps2 != null) {
                    ps2.close();
                    ps2 = null;
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

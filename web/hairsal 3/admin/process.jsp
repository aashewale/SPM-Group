<%-- 
    Document   : process
    Created on : 06/10/2020, 4:43:25 PM
    Author     : evendm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
String new_name = request.getParameter("service_name");
String new_charge = request.getParameter("service_cost");

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull",
            "root", "BWxcoQq7Um^9");
    Statement s = c.createStatement();
    int i=s.executeUpdate("insert into Beauty_Care_Services(service_id,service_name,service_charge)values('"+10+"','"+new_name+"','"+new_charge+"')");
}
catch (Exception e) {
    // do something...
}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service Update</title>
    </head>
    <body>
        <h1>Service updated - return to: </h1>
    </body>
</html>

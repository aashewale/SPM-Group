<%-- 
    Document   : login
    Created on : 13/10/2020, 7:12:04 PM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*"
        import = "java.sql.*"
        import = "javax.sql.*"
        import = "java.sql.ResultSet"
        import = "java.sql.Statement"
        import = "java.sql.Connection"
        import = "java.sql.DriverManager"
        import = "java.sql.SQLException"
        import = "java.util.Enumeration"
        import = "java.util.logging.Level"
        import = "java.util.logging.Logger"
        import = "javax.servlet.*"
        import = "javax.servlet.annotation.WebServlet"
        import = "javax.servlet.http.*"
%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Portal</title>
    </head>
    <body>
        <h1>User Portal</h1> 
        <p> Book Now: <a href="http://localhost:8080/SPM-Group-project/hairsal%203/booking.jsp">Here</a>
        </p>
        <p> Update Profile: <a href="http://localhost:8080/SPM-Group-project/hairsal%203/UpdateProfile.jsp">Here</a> </p>
        <p> <a href="logoutServlet">Logout</a> </p>
</html>

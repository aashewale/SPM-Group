<%-- 
    Document   : process
    Created on : 06/10/2020, 4:43:25 PM
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
        <title>Service Update</title>
    </head>
    <body>
        
        <h1>Service updated - return to: 
        <a href="http://localhost:8080/SPM-Group-project/hairsal%203/admin/services.jsp">here</a>
        </h1>
        <%
        Connection c = null;
        PreparedStatement ps = null;
        String new_name = request.getParameter("service_name");
        int new_charge = Integer.parseInt(request.getParameter("service_charge"));

        try {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
            ps = c.prepareStatement("insert into beauty_care_services(service_name, service_charge) values(?,?)");
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

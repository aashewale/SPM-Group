<%-- 
    Document   : billingResponse
    Created on : 12/10/2020, 1:45:24 PM
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
        <title>Billing Details Updated</title>
    </head>
    <body>
        <h1>Billing Details successfully updated</h1>
        <p> Return to <a href="http://localhost:8080/SPM-Group-project/hairsal%203/loginResponse.jsp">User Portal</a></h1></p>
        <%
        Connection c = null;
        PreparedStatement ps = null;
        PreparedStatement ps2 = null;
        ResultSet rs = null;
        int customer_id = (Integer) session.getAttribute("customer_id");
        //int customer_id = 8; //UPDATE
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
            String stmt = "SELECT invoice_id FROM Billing_Information WHERE customer_id=?";
            ps = c.prepareStatement(stmt);
            ps.setInt(1, customer_id);
            rs = ps.executeQuery();
            if (rs.next()) { //there exists billing info for this customer already
                int invoice_id = rs.getInt(1);
                stmt = "UPDATE Billing_Information SET name_on_invoice=?, biller_email_address=? WHERE invoice_id=?";
                ps2 = c.prepareStatement(stmt);
                ps2.setString(1, name);
                ps2.setString(2, email);
                ps2.setInt(3, invoice_id);
                ps2.executeUpdate();
            } else { //insert new entry
                stmt = "INSERT INTO Billing_Information(customer_id, name_on_invoice, biller_email_address) VALUES (?,?,?)";
                ps2 = c.prepareStatement(stmt);
                ps2.setInt(1, customer_id);
                ps2.setString(2, name);
                ps2.setString(3, email);
                ps2.executeUpdate();
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

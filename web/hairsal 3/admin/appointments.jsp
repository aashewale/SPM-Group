<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : appointments
    Created on : 06/10/2020, 12:06:38 PM
    Author     : Meg Evenden
--%>

<sql:query var="result" dataSource="jdbc/HairDress">
    SELECT appointment_time, service_name, location, client_name, contact_number, email_address, message
    FROM appointment 
    LEFT JOIN customer ON appointment.customer_id = customer.customer_id
    LEFT JOIN beauty_care_services ON appointment.service_id = beauty_care_services.service_id
    ORDER BY appointment_time   
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="adminstyle.css">
        <title>Appointments</title>
    </head>
    <body>
        <p> <a href="http://localhost:8080/SPM-Group-project/hairsal%203/admin/home.jsp">Home</a></p>
        <h1>Beth's Hairdressing Appointments</h1>
        <p>Upcoming appointments:</p>

            
        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

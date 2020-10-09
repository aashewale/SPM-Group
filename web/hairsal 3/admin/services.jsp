<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : services
    Created on : 06/10/2020, 12:06:53 PM
    Author     : evendm
--%>

<sql:query var="result" dataSource="jdbc/HairDress">
    SELECT * FROM Beauty_Care_Services
</sql:query>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="adminstyle.css">
        <title>Services</title>
    </head>
    <body>
        <h1>Beth's Hairdressing Services</h1>
        <p> Add a new service: </p>
        <form method="post" action="process.jsp">
            Service Name:<br>
            <input type="text" name="service_name">
            <br>
            Service Charge:<br>
            <input type="text" name="service_charge">
            <br> <br>
            <input type="submit" name="submit">
        </form>
        <p> Current Services: </p>
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

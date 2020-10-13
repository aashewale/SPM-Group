<%-- 
    Document   : logout
    Created on : 13 Oct, 2020, 12:57:55 AM
    Author     : alishashewale
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
        import = "java.io.IOException"
        import = "java.io.PrintWriter"
        import = "javax.servlet.ServletException"
        import = "javax.servlet.annotation.WebServlet"
        import = "javax.servlet.http.HttpServlet"
        import = "javax.servlet.http.HttpServletRequest"
        import = "javax.servlet.http.HttpServletResponse"
        import = "javax.servlet.http.HttpSession"
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servlet Logout</title>
    </head>
    <body>
         <body>
        <h1>You have logged out successfully</h1>
        <p> Return to <a href="http://localhost:8080/SPM-Group-project/hairsal%203/index.html">Home</a>
    </body>
<%
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        ses1=request.getSession();
        name=(String)ses1.getAttribute("myses");
        
        String id1=ses1.getId();
        String id2=(String)request.getAttribute("id");
        
        if(id1.equals(id2))
        {
        processRequest(request, response);
        }
        else
            response.sendRedirect("index.html");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ses1=request.getSession();
        name=(String)ses1.getAttribute("myses");
        
        String id1=ses1.getId();
        String id2=(String)request.getAttribute("id");
        
        if(id1.equals(id2))
        {
        processRequest(request, response);
        }
        else
            response.sendRedirect("index.html");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
%>
</body>
</html>
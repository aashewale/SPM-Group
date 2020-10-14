/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author evendm
 */
@WebServlet(urlPatterns = {"/hairsal%203/BookingServlet"})
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public BookingServlet() {
        super();
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Connection c = null;
        PreparedStatement ps = null;
        int num;
        String destPage = "booking.jsp";
        
        if (session != null){
            try {
                int id = (Integer) session.getAttribute("customer_id");
                int service = Integer.parseInt(request.getParameter("treatment"));
                String date = request.getParameter("date");
                String time = request.getParameter("time");
                String note = request.getParameter("note");
                String appointment_time = date + " " + time;
                Class.forName("com.mysql.jdbc.Driver");
                c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
                ps = c.prepareStatement("insert into appointment(service_id, customer_id, appointment_time, message) values(?,?,?,?)");
                ps.setInt(1, service);
                ps.setInt(2, id);
                ps.setString(3, appointment_time);
                ps.setString(4, note);
                num = ps.executeUpdate();
                String message = "Booking Successful";
                request.setAttribute("message", message);
            } catch (ClassNotFoundException e) {
                throw new ServletException("JDBC Driver not found.", e);
            } catch (SQLException e) {
                throw new ServletException("SQL Error", e);
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
        } else {
            String message = "Booking Failed - Log In First";
            request.setAttribute("message", message);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
        dispatcher.forward(request, response);
    }
}

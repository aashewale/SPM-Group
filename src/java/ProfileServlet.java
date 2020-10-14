/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author evendm
 */
@WebServlet(urlPatterns = {"/hairsal%203/ProfileServlet"})
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ProfileServlet() {
        super();
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Connection c = null;
        PreparedStatement ps = null;
        String destPage = "UpdateProfile.jsp";
        
        if (session != null){
            try {
                int customer_id = (Integer) session.getAttribute("customer_id");
                String client_name = request.getParameter("client_name");
                String home_address = request.getParameter("address");
                String contact_number = request.getParameter("phone");
                String email_address = request.getParameter("email");
                String password = request.getParameter("password");
                String related_information = request.getParameter("related_information");
                Class.forName("com.mysql.jdbc.Driver");
                c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
                if (!(client_name.equals(""))) {
                ps = c.prepareStatement("UPDATE customer SET client_name = ? WHERE customer_id = ?");
                ps.setString(1, client_name);
                ps.setInt(2, customer_id);
                ps.executeUpdate();
                }
                if (!(home_address.equals(""))) {
                    ps = c.prepareStatement("UPDATE customer SET home_address = ? WHERE customer_id = ?");
                    ps.setString(1, home_address);
                    ps.setInt(2, customer_id);
                    ps.executeUpdate();
                }
                if (!(email_address.equals(""))) {
                    ps = c.prepareStatement("UPDATE customer SET email_address = ? WHERE customer_id = ?");
                    ps.setString(1, email_address);
                    ps.setInt(2, customer_id);
                    ps.executeUpdate();
                }
                if (!(contact_number.equals(""))) {
                    ps = c.prepareStatement("UPDATE customer SET contact_number = ? WHERE customer_id = ?");
                    ps.setString(1, contact_number);
                    ps.setInt(2, customer_id);
                    ps.executeUpdate();
                }
                if (!(password.equals(""))) {
                    ps = c.prepareStatement("UPDATE customer SET initial_password = ? WHERE customer_id = ?");
                    ps.setString(1, password);
                    ps.setInt(2, customer_id);
                    ps.executeUpdate();
                }
                if (!(related_information.equals(""))) {
                    ps = c.prepareStatement("UPDATE customer SET related_information = ? WHERE customer_id = ?");
                    ps.setString(1, related_information);
                    ps.setInt(2, customer_id);
                    ps.executeUpdate();
                }
                String message = "Profile Information Successfully Updated";
                request.setAttribute("message1", message);
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
            request.setAttribute("message1", message);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
        dispatcher.forward(request, response);
    }
}

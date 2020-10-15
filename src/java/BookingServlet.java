/**
 *
 * @author 
 */

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*; 
import javax.mail.*; 
import javax.mail.PasswordAuthentication;
import javax.mail.internet.*;

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
        PreparedStatement ps2 = null;
        PreparedStatement ps3 = null;
        ResultSet rs = null;
        ResultSet rs2 = null;
        int num;
        String destPage = "booking.jsp";
        int service = Integer.parseInt(request.getParameter("treatment"));
        int booking_id = Integer.parseInt(request.getParameter("datetime"));
        String note = request.getParameter("note");
        
        if (session != null){
            try {
                // Get connection
                int customer_id = (Integer) session.getAttribute("customer_id");
                Class.forName("com.mysql.jdbc.Driver");
                c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
                
                // Prepare Insert statement 
                ps = c.prepareStatement("update appointment set service_id=?, customer_id=?, message=?, booked=? where booking_id=?");
                ps.setInt(1, service);
                ps.setInt(2, customer_id);
                ps.setString(3, note);
                ps.setBoolean(4, true);
                ps.setInt(5, booking_id);
                ps.executeUpdate();
                
                // Get customer details
                ps2 = c.prepareStatement("select client_name, contact_number, email_address from Customer where customer_id=?");
                ps2.setInt(1, customer_id);
                rs = ps2.executeQuery();
                String customer_name = null;
                String customer_phone = null;
                String customer_email = null;
                if (rs.next()){
                    customer_name = rs.getString(1);
                    customer_phone = rs.getString(2);
                    customer_email = rs.getString(3);
                }
                
                // Get booking time/date
                ps3 = c.prepareStatement("select appointment_time from appointment where booking_id=?");
                ps3.setInt(1, booking_id);
                rs2 = ps3.executeQuery();
                String appointment_time = null;
                if (rs2.next()){
                    appointment_time = rs2.getString(1);
                }
                
                // Send Success message to booking.jsp
                String message = "Booking Successful";
                request.setAttribute("message", message);
                RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
                dispatcher.forward(request, response);
                
                // Send email
                final String username = "bethHairDress@gmail.com";
                final String password = "bethHairDress12"; // this is an empty account 
                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                Session emailSession = Session.getInstance(props,
                  new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                        }
                  });
                Message email_message = new MimeMessage(emailSession);
                email_message.setFrom(new InternetAddress("bethHairDress@gmail.com"));
                email_message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse("mevenden@student.unimelb.edu.au")); //to show it works in demo
                email_message.setSubject("New Appointment");
                email_message.setText("New Appointment Booking" +
                        "\nName: " + customer_name +
                        "\nPhone Number: " + customer_phone +
                        "\nEmail Address: " + customer_email +
                        "\nDate/Time: " + appointment_time +
                        "\nMessage: " + note);
                Transport.send(email_message); 
            } catch (ClassNotFoundException e) {
                throw new ServletException("JDBC Driver not found.", e);
            } catch (SQLException e) {
                throw new ServletException("SQL Error", e);
            } catch (MessagingException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                        ps = null;
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
        } else {
            String message = "Booking Failed - Log In First";
            request.setAttribute("message", message);
        }
    }

}

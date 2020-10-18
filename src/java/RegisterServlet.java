/**
 * Servlet for response to registration details being updated
 * author: Meg Evenden
 */


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public RegisterServlet() {
        super();
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection c = null;
        PreparedStatement ps = null;
        String client_name = request.getParameter("client_name");
        String home_address = request.getParameter("home_address");
        String contact_number = request.getParameter("phone");
        String email_address = request.getParameter("email");
        String password = request.getParameter("password");
        String related_information = request.getParameter("relevant_information");
        
        try {
            //get connection
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
            
            //sql insert
            ps = c.prepareStatement("INSERT into Customer(client_name, home_address, email_address, contact_number, initial_password, related_information) VALUES (?,?,?,?,?,?)"); //UPDATE
            ps.setString(1, client_name);
            ps.setString(2, home_address);
            ps.setString(3, email_address);
            ps.setString(4, contact_number);
            ps.setString(5, password);
            ps.setString(6, "");
            ps.executeUpdate();
            
            //if there is related information update the entry
            if (!related_information.equals("")) {
                ps = c.prepareStatement("UPDATE customer SET related_information = ? WHERE email_address = ?");
                ps.setString(1, related_information);
                ps.setString(2, email_address);
                ps.executeUpdate();
            }
            String destPage = "register.jsp";
            String message = "Registration Successful";
            request.setAttribute("message", message);
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
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
    }
}
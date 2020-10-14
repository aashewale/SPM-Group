import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/hairsal%203/BillingServlet}"})
public class BillingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public BillingServlet() {
        super();
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        Connection c = null;
        PreparedStatement ps = null;
        PreparedStatement ps2 = null;
        ResultSet rs = null;
        String message;
        String destPage = "UpdateProfile.jsp";
        
        if (session != null){
            int customer_id = (Integer) session.getAttribute("customer_id");
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
                message = "Billing Information Successfully Updated";
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
                    if (ps2 != null) {
                        ps2.close();
                        ps2 = null;
                    }
                } catch (SQLException e) {

                }
            }
        } else {
            message = "Error - Please log in";
        }
        request.setAttribute("message2", message);
        RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
        dispatcher.forward(request, response);
    }
}

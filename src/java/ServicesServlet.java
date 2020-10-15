
import java.io.IOException;
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

@WebServlet(urlPatterns = {"/hairsal%203/admin/ServicesServlet"})
public class ServicesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ServicesServlet() {
        super();
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Connection c = null;
        PreparedStatement ps = null;
        String destPage = "services.jsp";
        
        if (session != null){
            try {
                String new_name = request.getParameter("service_name");
                int new_charge = Integer.parseInt(request.getParameter("service_charge"));
                Class.forName("com.mysql.jdbc.Driver");
                c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Beauty_Care_Services?zeroDateTimeBehavior=convertToNull&useSSL=false", "root", "BWxcoQq7Um^9");
                ps = c.prepareStatement("insert into beauty_care_services(service_name, service_charge) values(?,?)");
                ps.setString(1, new_name);
                ps.setInt(2, new_charge);
                ps.executeUpdate();
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
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
        dispatcher.forward(request, response);
    }
}
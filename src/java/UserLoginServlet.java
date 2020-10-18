/**
 * Code adapted from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
 * @author Alisha Shewale
 */

import java.io.*;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
 
@WebServlet(urlPatterns = {"/hairsal%203/loginServlet"})
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public UserLoginServlet() {
        super();
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
         
        UserDAO userDao = new UserDAO();
         
        try {
            User user = userDao.checkLogin(email, password);
            String destPage = "login.jsp";
             
            if (user != null) { //the login attempt was successful
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setAttribute("customer_id", user.getCustomerID());
                destPage = "index.jsp";
            } else { //invalid login
                String message = "Invalid email/password";
                request.setAttribute("message", message);
            }
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
}

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*"
        import = "java.sql.*"
        import = "javax.sql.*"
        import = "java.sql.ResultSet"
        import = "java.sql.Statement"
        import = "java.sql.Connection"
        import = "java.sql.DriverManager"
        import = "java.sql.SQLException"
        import = "java.util.Enumeration"
        import = "java.util.logging.Level"
        import = "java.util.logging.Logger"
        import = "javax.servlet.*"
        import = "javax.servlet.annotation.WebServlet"
        import = "javax.servlet.http.*"
%>

/**
 *
 * @author
 */
@WebServlet(urlPatterns = {"/loginPage"})
public class loginPage extends HttpServlet{
Connection con=null;
PreparedStatement pst=null;
ServletConfig config;
    @Override
    public void init(ServletConfig config) throws ServletException
    {
        this.config=config;
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con=DriverManager.getConnection("jdbc:derby://localhost:1527/Student","aptech","aptech");
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException, SQLException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Login</title>");            
            out.println("</head>");
            out.println("<body>");
           
            String pass=request.getParameter("password");
            String email=request.getParameter("email");
            try{
            String query = "SELECT * FROM userinfo where Email=? and password=?";
            pst = con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);
            ResultSet rs = pst.executeQuery();
            boolean result=rs.next();
                System.out.println("Login"+result);
            if(result)
            {
                System.out.println("A");
                //out.println("Login Successful");
               // response.sendRedirect("home.html");
                String name=rs.getString(1);
                System.out.println(name);
                HttpSession ses=request.getSession();
                ses.setAttribute("myses", name); //geting name from the database.
                
                ServletContext ctx=config.getServletContext();
                ctx.setAttribute("id", ses.getId()); //geting Id from the database
                System.out.println(ses.getAttribute("myses")+" "+request.getAttribute("id"));
                //RequestDispatcher rd=request.getRequestDispatcher("/home"); 
                System.out.println("B");
                //rd.forward(request, response);
                response.sendRedirect("home");
            }
            else
            {
                out.println("Login Fail");
                response.sendRedirect("index.html");
            }
            }
            catch (Exception e) 
        {
            out.println(e.getMessage());
        }
            out.println("</body>");
            out.println("</html>");
        }
         
        
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
   
    
    try {
        processRequest(request, response);
    } catch (SQLException ex) {
        Logger.getLogger(loginPage.class.getName()).log(Level.SEVERE, null, ex);
    }
   
    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    try {
        processRequest(request, response);
    } catch (SQLException ex) {
        Logger.getLogger(loginPage.class.getName()).log(Level.SEVERE, null, ex);
    }
    }

}
</html>


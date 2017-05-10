
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class regserv extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Aptitude Test by CBIT TPO </title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet regserv at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
                PrintWriter out=response.getWriter();
        
        //REQUEST PARAMETER ASSIGNING
        String pid=request.getParameter("pid");
        String name=request.getParameter("name");
        String college=request.getParameter("college");
        String phone=request.getParameter("phone");
        String times="0";
        
        //DATABASE CONNECTION DECLARATIVES
        String filename=null;
        String db=null;
        Connection con=null;
        Statement s=null;
        Statement r=null;
        ResultSet rs=null;  
        try
       {
          // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
           filename=new Connect().getpath();
           db="jdbc:ucanaccess://D:/quizdb.mdb";
          // db+=filename.trim()+";DriverID=22;READONLY=true}";
           con=DriverManager.getConnection(db,"","");
           s=con.createStatement();
           r=con.createStatement();
           try
           {
           rs= r.executeQuery("select * from quizdb where pid='"+pid+"';");
           if(!rs.next())
           {
           s.executeUpdate("insert into quizdb (pid,names,college,phone,result,times) values('"+pid+"','"+name+"','"+college+"','"+phone+"',0,'"+times+"');");
           s.close();
           con.close();
           out.println("<body onload='window.history.go(+1);'>");
           out.println("<h1 align=center>Welcome "+name+", you are registered successfully with us !!!</h1>");
           out.println("<h2>Instructions:</h2>");
           out.println("<h3>1. Total number of questions : 30</h3>");
           out.println("<h3>2. Time alloted : 30 minutes.</h3>");
           out.println("<h3>3. There are no negative marks for the wrong answers.</h3>");
           out.println("<h3>4. DO NOT refresh the page..</h3>");
           out.println("<h3>5. All the best :-).</h3>");
           out.println("<form name='f1' action='quiz.jsp' method='post' autocomplete='off'>");
           out.println("<input type=hidden value='"+pid+"' name=pid>");
           out.println("<input type=submit value='Start Test..' name='submit'>");
           out.println("</form>");
           out.println("</body>");
           }
           else
           {
              response.sendRedirect("index.jsp?msg=Sorry!!You have Already Attempted the Test");
           }
           }
           catch(Exception e)
           {
             out.println(e);
           }
           
       }
       catch(Exception e)
       {
           out.println("Error "+e);
       }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

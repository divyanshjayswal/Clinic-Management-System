import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Bookappointment extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        
        String s1 = request.getParameter("u1");
        String s2 = request.getParameter("u2");
        String s3 = request.getParameter("u3");
        String s4 = request.getParameter("u4");
        String s5 = request.getParameter("u5");
        String s6 = request.getParameter("u6");
        String s7 = request.getParameter("u7");
       
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///hospitaldb?useSSL=false","root","root");
            Statement st=con.createStatement();
            int x=st.executeUpdate("insert into bookappointmentreg(bname,bemail,bmobileno,bdate,bgender,bage,baddress) values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"' )");
            con.close();
            if(x!=0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Booking Successfully..!');");
                out.println("window.location.href = \"Userdashboard.jsp\";");
                out.println("</script>"); 
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Booking Failed');");
                out.println("window.location.href = \"Bookappointment.jsp\";");
                out.println("</script>");  
            }
            
        }
        catch(SQLIntegrityConstraintViolationException e1)
        {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Email Already Exist');");
                out.println("window.location.href = \"Bookappointment.jsp\";");
                out.println("</script>"); 
        }
        catch(Exception e)
        {
            out.println(e);
        }
        //out.println("</html>");
    }

}

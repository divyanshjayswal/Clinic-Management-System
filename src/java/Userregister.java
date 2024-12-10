import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Userregister extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        
        String s1 = request.getParameter("u1");
        String s2 = request.getParameter("u2");
        String s3 = request.getParameter("u3");
       
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///hospitaldb?useSSL=false","root","root");
            Statement st=con.createStatement();
            int x=st.executeUpdate("insert into userreg values ('"+s1+"','"+s2+"','"+s3+"' )");
            con.close();
            if(x!=0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Register Successfully..!');");
                out.println("window.location.href = \"Userlogin.jsp\";");
                out.println("</script>"); 
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Register Failed');");
                out.println("window.location.href = \"Userregis.jsp\";");
                out.println("</script>");  
            }
            
        }
        catch(SQLIntegrityConstraintViolationException e1)
        {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Email Already Exist');");
                out.println("window.location.href = \"Userregis.jsp\";");
                out.println("</script>"); 
        }
        catch(Exception e)
        {
            out.println(e);
        }
        //out.println("</html>");
    }

}

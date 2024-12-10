import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Adddoctor extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        
        
        String s2 = request.getParameter("u2");
        String s3 = request.getParameter("u3");
        String s4 = request.getParameter("u4");
        String s5 = request.getParameter("u5");
        String s6 = request.getParameter("u6");
        String s7 = request.getParameter("u7");
        String s8 = request.getParameter("u8");
        String s9 = request.getParameter("u9");
       
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///hospitaldb?useSSL=false","root","root");
            Statement st=con.createStatement();
            int x=st.executeUpdate("insert into adddoctorreg(adname,ademail,admobileno,addob,adgender,adqualification,adspecialization,adaddress) values ('"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"' )");
            con.close();
            if(x!=0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Doctor Added Successfully..!');");
                out.println("window.location.href = \"Admindashboard.jsp\";");
                out.println("</script>"); 
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Patient Added Failed');");
                out.println("window.location.href = \"Adddoctor.jsp\";");
                out.println("</script>");  
            }
            
        }
        catch(SQLIntegrityConstraintViolationException e1)
        {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Email Already Exist');");
                out.println("window.location.href = \"Adddoctor.jsp\";");
                out.println("</script>"); 
        }
        catch(Exception e)
        {
            out.println(e);
        }
        //out.println("</html>");
    }

}

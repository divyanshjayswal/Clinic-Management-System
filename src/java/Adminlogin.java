import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Adminlogin extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        
        String s1 = request.getParameter("u1");
        String s2 = request.getParameter("u2");
        
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///hospitaldb?useSSL=false","root","root");
            Statement st=con.createStatement();
            
            ResultSet rs=st.executeQuery("select * from adminreg where aemail='"+s1+"' AND apass='"+s2+"' ");
	    if(rs.next())
	    {
//                            Cookie ck=new Cookie("un","s1");
//                            ck.setMaxAge(60*60);
//                            response.addCookie(ck);
//			
                             HttpSession session =request.getSession();
                             session.setAttribute("un",s1);
                             
            response.sendRedirect("Admindashboard.jsp");
	    }
	    else
	   {
               out.println("<script type=\"text/javascript\">");
                out.println("alert('Invalid username and password');");
                out.println("window.location.href = 'Adminlogin.jsp';");
                out.println("</script>");
	   }
	    con.close();
	}
            
            
        catch(Exception e)
        {
            out.println(e);
        }
        //out.println("</html>");
    }

}

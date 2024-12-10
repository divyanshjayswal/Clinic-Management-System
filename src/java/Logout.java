import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Logout extends HttpServlet
{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
          PrintWriter out=response.getWriter();
          
//          Cookie ck=new Cookie("un","");
//          ck.setMaxAge(0);
//          response.addCookie(ck);
          
          HttpSession session =request.getSession();
          session.invalidate();
          
          response.sendRedirect("Home.jsp");
        }
}
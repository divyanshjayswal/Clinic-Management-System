import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DeletePatient extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        
        String s1 = request.getParameter("u1");
       
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///hospitaldb?useSSL=false","root","root");
            Statement st=con.createStatement();
            int x=st.executeUpdate("delete from addpatientreg where apid='"+s1+"'");
            con.close();
            if(x!=0)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Patient Deletion Successfully..!');");
                out.println("window.location.href = \"Admindashboard.jsp\";");
                out.println("</script>"); 
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Patient Deletion Failed');");
                out.println("window.location.href = \"Deletepatient.jsp\";");
                out.println("</script>");  
            }
            
        }
        catch(Exception e)
        {
            out.println(e);
        }
        //out.println("</html>");
    }

}

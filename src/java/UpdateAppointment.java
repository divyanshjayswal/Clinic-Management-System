import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class UpdateAppointment extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		String s1=request.getParameter("n1");
                String s4=request.getParameter("n4");
		PrintWriter out=response.getWriter();
		out.println("<html>");
        out.println("<head>");
        out.println("<link rel='stylesheet' href='abc.css'/><style>\n" +
"            header {\n" +
"            background-color: #007bff;\n" +
"            color: white;\n" +
"            padding: 10px 20px;\n" +
"            text-align: center;\n" +
"        }\n" +
"        footer {\n" +
"            background-color: #007bff;\n" +
"            color: white;\n" +
"            text-align: center;\n" +
"            padding: 10px 0;\n" +
"            position: fixed;\n" +
"            bottom: 0;\n" +
"            width: 100%;\n" +
"        }\n" +
"        </style>");
        out.println("<title>Appointment Update</title>");
        out.println("</head>");
        out.println("<body><header>\n" +
"        <h1>Welcome to Admin DashBoard</h1>\n" +
"       </header>");
        out.println("<div id='mymenu'>");
        out.println("<ul><li><a href=\"Admindashboard.jsp\" style=\"text-decoration: none;color: orange;\">Admin Dashbaord</a></li><li><a href=\"Rescheduleappointment.jsp\" style=\"text-decoration: none;color: orange;\">Reschedule Appointmnet</a></li><li><a href=\"Appointmentlist\" style=\"text-decoration: none;color: orange;\">Appointmnet List</a></li>");
        out.println("<li><a href=\"Adddoctor.jsp\"style=\"text-decoration: none;color: orange;\">Add Doctor</a></li>");
        out.println("<li><a href=\"Deletedoctor.jsp\" style=\"text-decoration: none;color: orange;\" >Delete Doctor</a></li><li><a href=\"Doctorlist\"style=\"text-decoration: none;color: orange;\">Doctor List</a></li>");
        out.println("<li><a href=\"Addpatient.jsp\"style=\"text-decoration: none;color: orange;\">Add Patient</a></li>");
        out.println("<li><a href=\"Deletepatient.jsp\" style=\"text-decoration: none;color: orange;\">Delete Patient</a></li><li><a href=\"Patientlist\"style=\"text-decoration: none;color: orange;\">Patient List</a></li>");
        out.println("<li><a href=\"Logout\"style=\"text-decoration: none;color: orange;\">LoGout</a></li>");
        out.println("</div><footer>\n" +
"        &copy; 2024 Hospital Management System. All Rights Reserved.\n" +
"    </footer>");
		try
		{
                    
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///hospitaldb?useSSL=false","root","root");
			Statement st=con.createStatement();
			int x=st.executeUpdate("update bookappointmentreg set bdate='"+s4+"' where bid='"+s1+"' ");
			if(x!=0)
			{
                            out.println("<script type=\"text/javascript\">");
                out.println("alert('Appointment Updated');");
                out.println("window.location.href = \"Admindashboard.jsp\";");
                out.println("</script>");
			}
			else
			{
                           out.println("<script type=\"text/javascript\">");
                out.println("alert('Appointment Not Updated');");
                out.println("window.location.href = \"SearchAppointment\";");
                out.println("</script>");
			}
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
               
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
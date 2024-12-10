import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class SearchAppointment extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		String s1=request.getParameter("u1");
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
        out.println("<title>Appointment Reschedule</title>");
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
			ResultSet rs=st.executeQuery("select * from bookappointmentreg where bid='"+s1+"'");
			out.println("<center>");
                           
			
			if(rs.next())
			{
                        out.println("<form action='UpdateAppointment'>"); 
                        out.println("<table cellpadding='12'>");
                        
                        out.println("<tr>");
			out.println("<th>Client ID<th>");
			out.println("<th><input type='number' class='A' value='"+rs.getString(1)+"' name='n1'></th>");
			out.println("</tr>");
                        
			out.println("<tr>");
			out.println("<th>Client Name<th>");
			out.println("<th>"+rs.getString(2)+"</th>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<th>Client Email<th>");
			out.println("<th>"+rs.getString(3)+"</th>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<th>Client Mobile No.<th>");
			out.println("<th>"+rs.getString(4)+"</th>");
			out.println("</tr>");
		
		        out.println("<tr>");
			out.println("<th>Booking Date<th>");
			out.println("<th><input type='date' class='A' value='"+rs.getString(5)+"' name='n4'></th>");
			out.println("</tr>");
			
			out.println("<tr>");
			out.println("<th>Client Gender<th>");
			out.println("<th>"+rs.getString(6)+"</th>");
			out.println("</tr>");
                        
                        out.println("<tr>");
			out.println("<th>Client Age<th>");
			out.println("<th>"+rs.getString(7)+"</th>");
			out.println("</tr>");
                        
                        out.println("<tr>");
			out.println("<th>Client Address<th>");
			out.println("<th>"+rs.getString(8)+"</th>");
			out.println("</tr>");
			out.println("<tr>");
                        
                        out.println("<th colspan='5'><input type='submit'class='B' value='Update'></th>");
			out.println("</tr>");
		        out.println("</table>");
			out.println("</form>");
			}
			else
			{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Appointment Not Found');");
                out.println("window.location.href = \"Rescheduleappointment.jsp\";");
                out.println("</script>");  
            }
                        
                        
			out.println("</center>");
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
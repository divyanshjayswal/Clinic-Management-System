import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Appointmentlist extends HttpServlet
{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
    {
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
        out.println("<title>Appointment List</title>");
        out.println("</head>");
        out.println("<body><header>\n" +
"        <h1>Welcome to Admin DashBoard</h1>\n" +
"       </header>");
        out.println("<div id='mymenu'>");
        out.println("<ul>");
        out.println("<li><a href=\"Admindashboard.jsp\" style=\"text-decoration: none;color: orange;\">Admin Dashbaord</a></li><li><a href=\"Rescheduleappointment.jsp\" style=\"text-decoration: none;color: orange;\">Reschedule Appointmnet</a></li><li><a href=\"Appointmentlist\" style=\"text-decoration: none;color: orange;\">Appointmnet List</a></li>\n" +
"    <li><a href=\"Adddoctor.jsp\" style=\"text-decoration: none;color: orange;\">Add Doctor</a></li><li><a href=\"Deletedoctor.jsp\" style=\"text-decoration: none;color: orange;\" >Delete Doctor</a></li>\n" +
"    <li><a href=\"Doctorlist\" style=\"text-decoration: none;color: orange;\">Doctor List</a></li>\n" +
"    <li><a href=\"Addpatient.jsp\" style=\"text-decoration: none;color: orange;\">Add Patient</a></li>\n" +
"    <li><a href=\"Deletepatient.jsp\" style=\"text-decoration: none;color: orange;\">Delete Patient</a></li><li><a href=\"Patientlist\" style=\"text-decoration: none;color: orange;\">Patient List</a></li>\n" +
"    <li><a href=\"Logout\" style=\"text-decoration: none;color: orange;\">LoGout</a></li>\n" +
"   </ul>");
        out.println("</div><footer>\n" +
"        &copy; 2024 Hospital Management System. All Rights Reserved.\n" +
"    </footer>");
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///hospitaldb?useSSL=false","root","root");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from bookappointmentreg");
            out.println("<center>");
            out.println("<table cellpadding='12'>");
            out.println("<tr>");
            out.println("<th>Appointment ID<th>");
            out.println("<th>Client Name<th>");
            out.println("<th>Client Email<th>");
            out.println("<th>Client Mobile No.<th>");
            out.println("<th>Booking Date<th>");
            out.println("<th>Client Gender<th>");
            out.println("<th>Client Age<th>");
            out.println("<th>Client Address<th>");
            out.println("</tr>");
            while(rs.next())
            {
                out.println("<tr>");
                out.println("<th>"+rs.getString(1)+"<th>");
                out.println("<th>"+rs.getString(2)+"<th>");
                out.println("<th>"+rs.getString(3)+"<th>");
                out.println("<th>"+rs.getString(4)+"<th>");
                out.println("<th>"+rs.getString(5)+"<th>");
                out.println("<th>"+rs.getString(6)+"<th>");
                out.println("<th>"+rs.getString(7)+"<th>");
                out.println("<th>"+rs.getString(8)+"<th>");
                out.println("</tr>");
            }
            out.println("</table>");
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
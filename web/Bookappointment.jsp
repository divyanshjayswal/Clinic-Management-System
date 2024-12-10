<html>
<head>
    <title>Book Appointment Page</title>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>

<%@include file="Usermenu.jsp" %>

<div id="mydata">
    <center>
        <form action="Bookappointment">
            <table cellpadding="12px">
                <caption>Appointment Form</caption>

                <tr>
                    <td><b>Name:-</b></td>
                    <td><input type="text" name="u1" class="A" placeholder="Enter Name.."></td>
                </tr>

                <tr>
                    <td><b>Email:-</b></td>
                    <td><input type="email" name="u2" class="A" placeholder="abc@gmail.com"></td>
                </tr>

                <tr>
                    <td><b>Mobile No:-</b></td>
                    <td>
                        <input type="text"  name="u3" class="A" pattern ="\d{10}" placeholder="1234567890" required><br>
                        <small>Enter 10 digits only.</small>
                    </td>
                </tr>
              
                <tr>
                    <td><b>Date:-</b></td>
                    <td>
                        <input type="date" name="u4" class="A" >
                    </td>
                </tr>
              
                 <tr>
                    <td>Gender:-</td>
                    <td>
                        <input type="radio" name="u5" value="male" id="male" required>
                        <label for="male">Male</label>
                        
                        <input type="radio" name="u5" value="female" id="female">
                        <label for="female">Female</label>
                        
                        <input type="radio" name="u5" value="other" id="other">
                        <label for="other">Other</label>
                    </td>
                </tr>

                 <tr>
                    <td><b>Age:-</b></td>
                    <td><input type="number" name="u6" class="A" placeholder="Enter Age.."></td>
                </tr>
                
                 <tr>
                    <td><b>Address:-</b></td>
                    <td><input type="text" name="u7" class="A" placeholder="Enter Addres.."></td>
                </tr>
                
                <tr>
                    <th colspan="2"><input type="submit" class="B" value="Book"></th>
                </tr>

            </table>
        </form>
    </center>
</div>
</body>
</html>
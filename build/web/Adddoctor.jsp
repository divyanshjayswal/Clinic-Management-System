<html>
<head>
    <title>Add Doctor Page</title>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>

<%@include file="Adminmenu.jsp" %>

<div id="mydata">
    <center>
        <form action="Adddoctor">
            <table cellpadding="12px">
                <caption>Add Doctor Form</caption>
                
                <tr>
                    <td><b>Name:-</b></td>
                    <td><input type="text" name="u2" class="A" placeholder="Enter Name.."></td>
                </tr>

                <tr>
                    <td><b>Email:-</b></td>
                    <td><input type="email" name="u3" class="A" placeholder="abc@gmail.com"></td>
                </tr>

                <tr>
                    <td><b>Mobile No:-</b></td>
                    <td>
                        <input type="text"  name="u4" class="A" pattern ="\d{10}" placeholder="1234567890" required><br>
                        <small>Enter 10 digits only.</small>
                    </td>
                </tr>
              
                <tr>
                    <td><b>DOB:-</b></td>
                    <td>
                        <input type="date" name="u5" class="A">
                    </td>
                </tr>
              
                <tr>
                    <td><b>Gender:-</b></td>
                    <td>
                        <input type="radio" name="u6" value="male" id="male" required>
                        <label for="male">Male</label>
                        
                        <input type="radio" name="u6" value="female" id="female">
                        <label for="female">Female</label>
                        
                        <input type="radio" name="u6" value="other" id="other">
                        <label for="other">Other</label>
                    </td>
                </tr>

                 <tr>
                    <td><b>Qualification:-</b></td>
                    <td>
                        <select class="A" name="u7">
                            <option name="u7">BHMS</option>
                            <option name="u7">BAMS</option>
                            <option name="u7">MBBS</option>
                            <option name="u7">MD</option>
                            <option name="u7">MS</option>
                            <option name="u7">BDS</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    <td><b>Specialization:-</b></td>
                    <td>
                        <select class="A" name="u8">
                            <option name="u8">Cardiology</option>
                            <option name="u8">Radiology</option>
                            <option name="u8">Neurology</option>
                            <option name="u8">Immunology</option>
                            <option name="u8">Orthopedics</option>
                            <option name="u8">Pediatrics</option>
                            <option name="u8">Dermatology</option>
                            <option name="u8">Gynecologist</option>
                        </select>
                    </td>
                </tr>
                
                 <tr>
                    <td><b>Address:-</b></td>
                    <td><input type="text" name="u9" class="A" placeholder="Enter Addres.."></td>
                </tr>
                
                <tr>
                    <th colspan="2"><input type="submit" class="B" value="Add"></th>
                </tr>

            </table>
        </form>
    </center>
</div>
</body>
</html>
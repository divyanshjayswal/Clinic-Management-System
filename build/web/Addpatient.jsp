<html>
<head>
    <title>Add Patient Page</title>
<link rel="stylesheet" href="abc2.css"/>
</head>
<body>

<%@include file="Adminmenu.jsp" %>

<div id="mydata">
    <center>
        <form action="Addpatient">
            <table cellpadding="12px">
                <caption>Add Patient Form</caption>

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
                    <td><b>Diseases:-</b></td>
                    <td>
                        <select class="A" name ="u7">
                            <option name="u7">Heart</option>
                            <option name="u">Cancer</option>
                            <option name="u7">Diabetes</option>
                            <option name="u7">Infectious</option>
                            <option name="u7">Skin</option>
                            <option name="u7">Kidney</option>
                            <option name="u7">Lungs</option>
                            <option name="u7">HIV</option>
                            <option name="u7">Tumor</option>
                        </select>
                    </td>
                </tr>
                
                 <tr>
                    <td><b>Address:-</b></td>
                    <td><input type="text" name="u8" class="A" placeholder="Enter Addres.."></td>
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
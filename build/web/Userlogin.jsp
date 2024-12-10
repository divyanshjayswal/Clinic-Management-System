<html>
<head>
    <title>User Login Page</title>
<link rel="stylesheet" href="abc.css"/>
</head>
<body>

<%@include file="Homepage.jsp" %>

<div id="mydata">
    <center>
        <form action="Userlogin">
            <table cellpadding="12px">
                <caption>User Login Page</caption>

                <tr>
                    <td><b>Enter Email:-</b></td>
                    <td><input type="email" name="u1" class="A" placeholder="abcd@gmail.com"></td>
                </tr>

                <tr>
                    <td><b>Enter Password:-</b></td>
                    <td>
                        <input type="password" name="u2" class="A" placeholder="Enter Password..." id="t1" oninput="demo()">
                    </td>
                </tr>
               
                 <tr>
                     <td>Create new Account</td>
                     <td><b><a href="Userregis.jsp">Register</a></b></td>
                </tr>
                <tr>
                    <th colspan="2"><input type="submit" class="B" value="LOGIN"></th>
                </tr>

            </table>
        </form>
    </center>
</div>
</body>
</html>
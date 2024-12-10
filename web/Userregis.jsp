<html>
<head>
    <title>User Registration Page</title>
<link rel="stylesheet" href="abc.css"/>
<script type="text/javascript">
function demo() {
    var x = document.getElementById('t1').value;
    var message;

    if (x.length >= 8) {
        message = "Password is strong";
    } else if (x.length >= 4) {
        message = "Password is medium";
    } else {
        message = "Password is weak";
    }

    document.getElementById('t1').title = message;
}
</script>
</head>
<body>

<%@include file="Homepage.jsp" %>

<div id="mydata">
    <center>
        <form action="Userregister">
            
            <table cellpadding="12px">
                <caption>User Registration Page</caption>

                <tr>
                    <td><b>Enter Name:-</b></td>
                    <td><input type="text" name="u1" class="A" placeholder="Enter Name.."></td>
                </tr>

                <tr>
                    <td><b>Enter Email:-</b></td>
                    <td><input type="email" name="u2" class="A" placeholder="Enter Email.."></td>
                </tr>

                <tr>
                    <td><b>Enter Password:-</b></td>
                    <td>
                        <input type="password" name="u3" class="A" placeholder="Enter Password..." id="t1" oninput="demo()">
                    </td>
                </tr>
              
                <tr>
                    <th colspan="2"><input type="submit" class="B" value="Registration"></th>
                </tr>

            </table>
        </form>
    </center>
</div>
</body>
</html>
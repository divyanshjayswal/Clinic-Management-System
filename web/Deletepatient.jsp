<html>
<head>
<link rel="stylesheet" href="abc.css"/>
<title>Delete Patient</title>
</head>

<%@include file="Adminmenu.jsp" %>

<body>
<div id="mydata">
<center>
<form action="DeletePatient">
<table cellpadding="12">
<caption>Delete Patient</caption>

<tr>
<td><b>Enter Patient ID:-</b></td>
<td><input type="text" name="u1" class="A" placeholder="Enter Patient ID..."></td>
</tr>


<tr>
<th colspan="2"><input type="submit" class="B" value="Delete"></th>
</tr>

</table>
</div>
</form>
</center>
</body>
</html>
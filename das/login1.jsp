<html>
<head>
<title>LOGIN</title>
	
</head>	

<body>
<%@include file="main.jsp"%>

	<h1 align=center>LOG IN</h1>
<form action="login_db.jsp" method=post>
<h2 align=center>INVALID USERNAME OR PASSWORD</h2>
<h2 >
<table align=center style="border-style:solid;" cellpadding=30px>

<tr ><td >username</td><td><input type=text name="username" size=20 style="height:20;color=red"></td></tr>
<tr><td>Password </td><td><input type=password name ="password" size=20></td></tr>
<tr><td><input type=submit value=LOGIN></td></tr>
</h2>
</form>
</table>
</body>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=windows-1252">
<title>Compounder sign up</title>
	<link rel="stylesheet" type="text/css" href="home%20page_files/home.css">
</head>	

<body >
<%@include file="main.jsp"%>


<h1 align=center>Compounder Registration</h1>
<form action="http://127.0.0.1:8080/das/docdata.jsp">

<h2>
<table align=center style="border-style:solid; background-color:white;">
<tr><th><b>PERSONAL DETAILS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>First name</b></td><td> <input type=text name="d1" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Last name</b></td><td> <input type=text name="d2" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Username</b></td><td> <input type=text name="d3" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Gender</b></td><td><b>Female</b><INPUT TYPE=RADIO NAME="d4" VALUE="F">
<b>Male</b><INPUT TYPE=RADIO NAME="d4" VALUE="M"></td></tr>


<script src="datetimepicker_css.js"></script>
<tr><td><b>D.O.B</b></td><td><input type="Text"  id="d5" name=d5 maxlength="25" size="25"/>
        <img src="images2/cal.gif" onclick="javascript:NewCssCal('d5')" style="cursor:pointer"/></td></tr>



<tr><td><b>Password</b> </td><td><input type=password name ="d6" size=20></td></tr>
<tr><td><b>Confirm Password</b>  </td><td><input type=password name ="d7" size=20></td></tr>

<tr><td><hr></td></tr>
<tr><th><b>CONTACT DETAILS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>Phone No.</b></td><td><b>Office</b><input type=text name ="d8" size=10></td><td><b>Home</b><input type=text name ="d9" size=10></td></tr>
<tr><td><b>E-mail</b></td><td><input type=text name="d10"></td></tr>
<tr><td><b>Address</b></td><td><input type=text name="d11"></td></tr>
<tr><td><b>Pin/Zip Code</b></td><td><input type=text name="d12"></td></tr>
<tr><td><b>District</b></td><td><input type=text name="d13"></td></tr>

<tr><td><b>State</b></td><td><select name="d14"><option>select</option>
<option value="DELHI(NCR)">DELHI(NCR)</option>
<option value="GOA">GOA</option>
<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
<option value="RAJSHTHAN">RAJSHTHAN</option>
<option value="UTTRAKHAND">UTTRAKHAND</option>
<option value="UTTAR PRADESH">UTTAR PRADESH</option>
</select>
</td></tr>

<tr><td><b>Country</b></td><td><select name="d15"><option>select</option>
<option value="ARGENTINA">ARGENTINA</option>
<option value="BRITAIN">BRITAIN</option>
<option value="DENMARK">DENMARK</option>
<option value="EUROPE">EUROPE</option>
<option value="INDIA">INDIA</option>
<option value="RUSSIA">RUSSIA</option>
<option value="U.A.E">UNITED ARAB EMIRATES(U.A.E)</option>
<option value="U.S.A">UNITED STATES OF AMERICA(U.S.A)</option>
</select>
</td></tr>




<tr><td><input type=submit value="Register"></td>
</form>
<td><form action="http://127.0.0.1:8080/das/docreg.jsp" align="center"><input type=submit value="Reset"></form></td>

<td><form action="http://127.0.0.1:8080/das/DAShomepage.jsp" align="center"><input type=submit value="Cancel"></form></td></tr>


</table>
</h2>
</body>
</html>
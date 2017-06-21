<html>
<head>
<title>Blood Report</title>
</head>
<body>
<%@include file="doc.jsp"%>
<%String value =(String)session.getAttribute("pid");%>
<h1 align=center>Blood Report</h1>
<form action="http://127.0.0.1:8080/das/blood.jsp">

<h2>
<table align=center style="border-style:solid; background-color:white;">
<tr><td><b>pid</b></td><td> <input type=text name="pid" value=<%=value%> size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Patient Name</b></td><td> <input type=text name="pname" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Lab Assistent</b></td><td> <input type=text name="lname" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Lab No.</b></td><td> <input type=text name="labno" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Age</b></td><td> <input type=text name="age" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Gender</b></td>
<td><b>Male</b><INPUT TYPE=RADIO NAME="gender" VALUE="M">
<b>Female</b><INPUT TYPE=RADIO NAME="gender" VALUE="F"></td>
</tr>
<script src="datetimepicker_css.js"></script>
<tr><td><b>Date</b></td><td><input type="Text"  id="a5" name="date" maxlength="25" size="20"/>
        <img src="images2/cal.gif" onclick="javascript:NewCssCal('a5')" style="cursor:pointer"/></td></tr>

<tr><td><b>Blood Group</b></td><td> <input type=text name="bloodgroup" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Hemoglobin</b></td><td> <input type=text name="hemoglobin" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>RBC Count</b></td><td> <input type=text name="rbc" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>WBC Count</b></td><td> <input type=text name="wbc" size=20 style="height:20;color=red"></td></tr>
<tr><td></td><td> <input type=submit  size=20 style="height:20;color=red"></td></tr>

</table>
</h2>
</body>
</html>

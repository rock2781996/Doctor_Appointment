<!DOCTYPE html>
<html>
<head><title>URINE PAGE</title>
</head>

<body>
<%@include file="doc.jsp"%>

<%String value =(String)session.getAttribute("pid");%>
<h1 align=center>URINE REPORT</h1>
<h4>
<form action="http://127.0.0.1:8080/das/urine.jsp">
<TABLE align=center style="border-style:solid; background-color:white;">
<tr><td><b>pid</b></td><td> <input type=text name="pid" value=<%=value%> size=20 style="height:20;color=red"></td></tr>
<tr><td>PATIENT NAME:</td><td><input type=text name=a1 size=20 style="height:20;color=red" ></td></tr>
<tr><td>ASSISTANT DOCTOR:</td><td><input type=text name=a2 size=20 style="height:20;color=red" ></td></tr>
<tr><td>LAB NO.:</td><td><input type=text name=a3 size=20 style="height:20;color=red"></td></tr>
<tr><td>AGE:</td><td><input type=text name=a4 size=20 style="height:20;color=red"></td></tr>

<TR><td>SEX:</td><td><input type=radio name=a5 value=male>MALE<input type=radio name=a5 value=female>FEMALE</td></tr>
<tr><td>URINE COLOUR:</td><td><input type=text name=a6 size=20 style="height:20;color=red"></td></tr>
<tr><td>APPEARANCE:</td><td><input type=text name=a7 size=20 style="height:20;color=red"></td></tr>
<tr><td>SPECIFIC GRAVITY:</td><td><input type=text name=a8 size=20 style="height:20;color=red"></td></tr>
<tr><td>PH:</td><td><input type=text name=a9 size=20 style="height:20;color=red"></td></tr>
<tr><td>PROTEIN(ACID PPT):</td><td><input type=text name=a10 size=20 style="height:20;color=red"></td></tr>

<tr><td align=center><input type=submit></td><td align=center><input type=reset></td></tr>
</form></table></h4>
</body>
</html>
<!DOCTYPE html>
<html>
<head><title>CARDIAC PAGE</title>
</head>

<body>

<%@include file="doc.jsp"%>
<%String value =(String)session.getAttribute("pid");%>

<h1 align=center>CARDIAC REPORT</h1>
<h4>
<form action="http://127.0.0.1:8080/das/cardiac.jsp">
<TABLE align=center style="border-style:solid; background-color:white;">
<tr><td><b>pid</b></td><td> <input type=text name="pid" value=<%=value%> size=20 style="height:20;color=red"></td></tr>
<tr><td>PATIENT NAME:</td><td><input type=text name=a1  size=20 style="height:20;color=red"></td></tr>
<tr><td>ASSISTANT DOCTOR:</td><td><input type=text name=a2 size=20 style="height:20;color=red"  ></td></tr>
<tr><td>LAB NO.:</td><td><input type=text name=a3 size=20 style="height:20;color=red"></td></tr>
<tr><td>AGE:</td><td><input type=text name=a4  size=20 style="height:20;color=red"></td></tr>
<TR><td>SEX:</td><td><input type=radio name=a5 value=male>MALE<input type=radio name=a5 value=female>FEMALE</td></tr>
<tr><td>CHOLESTROL:</td><td><input type=number name=a6 min=120 max=200 size=20 style="height:20;color=red"></td></tr>
<tr><td>S.G.O.T.:</td><td><input type=number name=a7 min=00 max=46 size=20 style="height:20;color=red"></td></tr>
<tr><td>LDH:</td><td><input type=number name=a8 min=225 max=450 size=20 style="height:20;color=red"></td></tr>
<tr><td>CPK:</td><td><input type=number name=a9 min=0 max=171 size=20 style="height:20;color=red"></td></tr>
<tr><td>CK-MB:</td><td><input type=number name=a10 min=0 max=25 size=20 style="height:20;color=red" ></td></tr>

<tr><td align=center><input type=submit></td><td align=center><input type=reset></td></tr>
</form></table></h4>
</body>
</html>















































































































<!DOCTYPE html>
<html>
<head><title>RENAL PAGE</title>
</head>

<body>

<%@include file="doc.jsp"%>
<%String value =(String)session.getAttribute("pid");%>
<h1 align=center>RENAL REPORT</h1>
<h4>
<form action="http://127.0.0.1:8080/das/renal.jsp">
<TABLE align=center style="border-style:solid; background-color:white;">
<tr><td><b>pid</b></td><td> <input type=text name="pid" value=<%=value%> size=20 style="height:20;color=red"></td></tr>
<tr><td>PATIENT NAME:</td><td><input type=text name=a1  size=20 style="height:20;color=red"></td></tr>
<tr><td>ASSISTANT DOCTOR:</td><td><input type=text name=a2 size=20 style="height:20;color=red" ></td></tr>
<tr><td>LAB NO.:</td><td><input type=text name=a3 size=20 style="height:20;color=red"></td></tr>
<tr><td>AGE:</td><td><input type=text name=a4 size=20 style="height:20;color=red"></td></tr>
<TR><td>SEX:</td><td><input type=radio name=a5 value=male>MALE<input type=radio name=a5 value=female>FEMALE</td></tr>
<tr><td>BLOOD UREA:</td><td><input type=number name=a6 min=10 max=50 size=20 style="height:20;color=red"></td></tr>
<tr><td>UREA NITROGEN:</td><td><input type=number name=a7 min=4 max=20 size=20 style="height:20;color=red"></td></tr>
<tr><td>S.CREATININE:</td><td><input type=number name=a8 min=7 max=14 size=20 style="height:20;color=red"></td></tr>
<tr><td>S.URIC ACID:</td><td><input type=number name=a9 min=3.4 max=7 size=20 style="height:20;color=red"></td></tr>
<tr><td>S.PHOSPHORUS:</td><td><input type=number name=a10 min=2.5 max=5 size=20 style="height:20;color=red"></td></tr>
<tr><td>GLOBUMIN:</td><td><input type=number name=a11 min=2 max=3.5 size=20 style="height:20;color=red"></td></tr>
<tr><td>A.G RATIO:</td><td><input type=number name=a12 min=1 max=2.3 size=20 style="height:20;color=red"></td></tr>
<tr><td align=center><input type=submit></td><td align=center><input type=reset></td></tr>
</form></table></h4>
</body>
</html>

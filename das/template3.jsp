<html>
<head>
<title> template select </title>
</head>
<body>
<%@include file="doc.jsp"%>
<%@page import="java.sql.*;"%>
<script src="datetimepicker_css.js"></script>
<form align=center action="http://127.0.0.1:8080/das/template4.jsp">
<br><br>
<h2 align=center>SELECT TEMPLATE</H2>
<select name=select>
<option>summer</option>
<option>winter</option>
<option>autumn</option>
<option>spring</option>
</select><br><br><br>
<h2 align=center>SELECT TIME DURATION</h2>

<table align=center><tr><td><input type="Text" name=t1 id="demo1" maxlength="25" size="25" value=date>
        <img src="cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor:pointer"/></td>
		<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="Text" name=t2 id="demo2" maxlength="25" size="25" value=date>
        <img src="cal.gif" onclick="javascript:NewCssCal('demo2')" style="cursor:pointer"/></td></tr></table>
		<br><br><br><input type=submit>
		</form></body>
		</html>


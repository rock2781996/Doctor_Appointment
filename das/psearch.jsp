<HTML>
<HEAD>
<TITLE>search</TITLE>

<script src="datetimepicker_css.js"></script>
</HEAD>
<BODY>
<%@include file="pat.jsp"%>

<form action="http://127.0.0.1:8080/das/pselect.jsp">
<h3 align="center">Check here for available appointment</h3>
<table align="center" style="border-style:solid; background-color:white;">
<tr><td><b>Date <input type="Text" name=t1 id="demo1" maxlength="25" size="25" value=date>
        <img src="cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor:pointer"/></b></td></tr>
<br>
<tr><td><input type=submit name=t7 value=check></tr></td>
</table>
</form>
</BODY>
</HTML>

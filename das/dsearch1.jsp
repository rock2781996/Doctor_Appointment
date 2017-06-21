<HTML>
<HEAD>
<TITLE> Search slots information</TITLE>
<script src="datetimepicker_css.js"></script>
</HEAD>
<BODY>
	<%@include file="doc.jsp"%>


<form action="http://127.0.0.1:8080/das/dselect1.jsp">
<h3 align=center>Enter the date to check information about slots</h3>
<table  align=center style="border-style:solid; background-color:white;">
<tr><td>Date<input type="Text" name=t1 id="demo1" maxlength="25" size="25" >
        <img src="cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor:pointer"/></td></tr>
<tr><td><input type=submit name=t6 value=search></td></tr>
</table>
</form>
</BODY>
</HTML>

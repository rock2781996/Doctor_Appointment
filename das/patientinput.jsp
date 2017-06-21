<HTML>
<HEAD>
<title>patient send box</title>
</HEAD>
<BODY>
<%@include file="pat.jsp"%>
	
<H1 align=center>PATIENT SEND BOX</H1>
<form action="http://127.0.0.1:8080/das/pinsert.jsp">

<h2>
<table align="center" style="border-style:solid; background-color:white;">
<tr><td>NAME</td><td><INPUT TYPE=TEXT NAME=t1 VALUE=""></td></tr>

<tr><td>Subject</td><td><textarea ROWS="4" COLUMNS="20" NAME=t2></textarea></td></tr>

<tr><td>E-mail space</td><td><textarea ROWS="10" COLUMNS="10" NAME=t3></textarea></td></tr>

<tr><td>Attach File</td><td><input type=text name=t4 value=""></td></tr>


<script src="datetimepicker_css.js"></script>
<tr><td>Date</td><td><input type="Text"  id="t5" name=t5 maxlength="25" size="25"/>
        <img src="images2/cal.gif" onclick="javascript:NewCssCal('t5')" style="cursor:pointer"/></td></tr>

<tr><td><INPUT TYPE=SUBMIT VALUE="SEND"></td></tr>
</form>
<tr><td><form action="http://127.0.0.1:8080/das/patientinput.jsp"><input type=submit value="RESET"></form></td></tr>

<tr><td><form action="http://127.0.0.1:8080/das/pathome.jsp"><input type=submit value="CANCEL"></form></td></tr>

</table>
</h2>


</BODY>
</HTML>
<HTML>
<HEAD>
<HEAD>
   <title>Doctor Compose Mail</title>


</HEAD>
<BODY>
<%@include file="doc.jsp"%>

<H1 align=center>Compose Mail</H1>
<form action="pdoccompose.jsp">

<h2>
<table align=center style="border-style:solid; background-color:white;">
<tr><td>To</td><td><INPUT TYPE=TEXT NAME=p1 ></td></tr>

<tr><td>Subject</td><td><textarea ROWS="4" COLUMNS="20" NAME=p2></textarea></td></tr>
<tr><td>E-mail space</td><td><textarea ROWS="10" COLUMNS="20" NAME=p3></textarea></td></tr>
<tr><td>Attachment</td><td><input type=text name=p4></td></tr>

<script src="datetimepicker_css.js"></script>
<tr><td>Date</td><td><input type="Text"  id="p5" name=p5 maxlength="25" size="25"/>
        <img src="images2/cal.gif" onclick="javascript:NewCssCal('p5')" style="cursor:pointer"/></td></tr>
<tr><td><INPUT TYPE=SUBMIT VALUE="SEND"></td></tr>
</form>

<tr><td><form action="http://127.0.0.1:8080/das/docmail.jsp"><input type=submit value="RESET"></form></td></tr>

<tr><td><form action="http://127.0.0.1:8080/das/dochome.jsp"><input type=submit value="CANCEL"></form></td></tr>

</table>
</h2>

</BODY>
</HTML>

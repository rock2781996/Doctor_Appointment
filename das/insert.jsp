<HTML>
<HEAD>
<TITLE>Insert available appointmnets</TITLE>

<style>
.c1
{ padding-left:4cm;
}
.c2
{
padding-left:14cm;
}
</style>
<script src="datetimepicker_css.js"></script>
</HEAD>
<BODY>
<%@include file="doc.jsp"%>

	
<h1 class=c2 >TIME TABLE</h1>

<form action="http://127.0.0.1:8080/das/insertdbms.jsp">
<br>
<br>
<table align="center" style="border-style:solid; background-color:white;">
<tr><td>Date<input type="Text" name=t1 id="demo1" maxlength="25" size="25" >
        <img src="cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor:pointer"/></td></tr>
</table>

<h3 class=c1 align=center>Morning Time</h3>
<table border=2 cellpadding=10px align=center>
<tr><td>1-2am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a1_2_1 value=y>1:00-1:15am</td>
<td><input type=checkbox name=a1_2_2 value=y>1:15-1:30am</td>
<td><input type=checkbox name=a1_2_3 value=y>1:30-1:45am</td>
<td><input type=checkbox name=a1_2_4 value=y>1:45-2:00am</td>
</tr>
<tr>
<td>2-3am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a2_3_1 value=y>2:00-2:15am</td>
<td><input type=checkbox name=a2_3_2 value=y>2:15-2:30am</td>
<td><input type=checkbox name=a2_3_3 value=y>2:30-2:45am</td>
<td><input type=checkbox name=a2_3_4 value=y>2:45-3:00am</td>
</tr>
<tr>
<td>3-4am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a3_4_1 value=y>3:00-3:15am</td>
<td><input type=checkbox name=a3_4_2 value=y>3:15-3:30am</td>
<td><input type=checkbox name=a3_4_3 value=y>3:30-3:45am</td>
<td><input type=checkbox name=a3_4_4 value=y>3:45-4:00am</td>
</tr><tr>
<td>4-5am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a4_5_1 value=y>4:00-4:15am</td>
<td><input type=checkbox name=a4_5_2 value=y>4:15-4:30am</td>
<td><input type=checkbox name=a4_5_3 value=y>4:30-4:45am</td>
<td><input type=checkbox name=a4_5_4 value=y>4:45-5:00am</td>
</tr><tr>
<td>5-6am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a5_6_1 value=y>5:00-5:15am</td>
<td><input type=checkbox name=a5_6_2 value=y>5:15-5:30am</td>
<td><input type=checkbox name=a5_6_3 value=y>5:30-5:45am</td>
<td><input type=checkbox name=a5_6_4 value=y>5:45-6:00am</td>
</tr><tr>
<td>6-7am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a6_7_1 value=y>6:00-6:15am</td>
<td><input type=checkbox name=a6_7_2 value=y>6:15-6:30am</td>
<td><input type=checkbox name=a6_7_3 value=y>6:30-6:45am</td>
<td><input type=checkbox name=a6_7_4 value=y>6:45-7:00am</td>
</tr><tr>
<td>7-8am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a7_8_1 value=y>7:00-7:15am</td>
<td><input type=checkbox name=a7_8_2 value=y>7:15-7:30am</td>
<td><input type=checkbox name=a7_8_3 value=y>7:30-7:45am</td>
<td><input type=checkbox name=a7_8_4 value=y>7:45-8:00am</td>
</tr><tr>
<td>8-9am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a8_9_1 value=y>8:00-8:15am</td>
<td><input type=checkbox name=a8_9_2 value=y>8:15-8:30am</td>
<td><input type=checkbox name=a8_9_3 value=y>8:30-8:45am</td>
<td><input type=checkbox name=a8_9_4 value=y>8:45-9:00am</td>
</tr><tr>
<td>9-10am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a9_10_1 value=y>9:00-9:15am</td>
<td><input type=checkbox name=a9_10_2 value=y>9:15-9:30am</td>
<td><input type=checkbox name=a9_10_3 value=y>9:30-9:45am</td>
<td><input type=checkbox name=a9_10_4 value=y>9:45-10:00am</td>
</tr><tr>
<td>10-11am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a10_11_1 value=y>10:00-10:15am</td>
<td><input type=checkbox name=a10_11_2 value=y>10:15-10:30am</td>
<td><input type=checkbox name=a10_11_3 value=y>10:30-10:45am</td>
<td><input type=checkbox name=a10_11_4 value=y>10:45-11:00am</td>
</tr><tr>
<td>11-12am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a11_12_1 value=y>11:00-11:15am</td>
<td><input type=checkbox name=a11_12_2 value=y>11:15-11:30am</td>
<td><input type=checkbox name=a11_12_3 value=y>11:30-11:45am</td>
<td><input type=checkbox name=a11_12_4 value=y>11:45-12:00am</td>
</tr><tr>
<td>12-1pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p12_1_1 value=y>12:00-12:15pm</td>
<td><input type=checkbox name=p12_1_2 value=y>12:15-12:30pm</td>
<td><input type=checkbox name=p12_1_3 value=y>12:30-12:45pm</td>
<td><input type=checkbox name=p12_1_4 value=y>12:45-1:00pm</td>
</tr><tr>
<td>1-2pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p1_2_1 value=y>1:00-1:15pm</td>
<td><input type=checkbox name=p1_2_2 value=y>1:15-1:30pm</td>
<td><input type=checkbox name=p1_2_3 value=y>1:30-1:45pm</td>
<td><input type=checkbox name=p1_2_4 value=y>1:45-2:00pm</td>
</tr><tr>
<td>2-3pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p2_3_1 value=y>2:00-2:15pm</td>
<td><input type=checkbox name=p2_3_2 value=y>2:15-2:30pm</td>
<td><input type=checkbox name=p2_3_3 value=y>2:30-2:45pm</td>
<td><input type=checkbox name=p2_3_4 value=y>2:45-3:00pm</td>
</tr><tr>
<td>3-4pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p3_4_1 value=y>3:00-3:15pm</td>
<td><input type=checkbox name=p3_4_2 value=y>3:15-3:30pm</td>
<td><input type=checkbox name=p3_4_3 value=y>3:30-3:45pm</td>
<td><input type=checkbox name=p3_4_4 value=y>3:45-4:00pm</td>
</tr>
</table>
<h3 class=c1 align=center>Evening Time</h3>
<table border=2 cellpadding=10px align=center>
<tr>
<td>4-5pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p4_5_1 value=y>4:00-4:15pm</td>
<td><input type=checkbox name=p4_5_2 value=y>4:15-4:30pm</td>
<td><input type=checkbox name=p4_5_3 value=y>4:30-4:45pm</td>
<td><input type=checkbox name=p4_5_4 value=y>4:45-5:00pm</td>
</tr><tr>
<td>5-6pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p5_6_1 value=y>5:00-5:15pm</td>
<td><input type=checkbox name=p5_6_2 value=y>5:15-5:30pm</td>
<td><input type=checkbox name=p5_6_3 value=y>5:30-5:45pm</td>
<td><input type=checkbox name=p5_6_4 value=y>5:45-6:00pm</td>
</tr><tr>
<td>6-7pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p6_7_1 value=y>6:00-6:15pm</td>
<td><input type=checkbox name=p6_7_2 value=y>6:15-6:30pm</td>
<td><input type=checkbox name=p6_7_3 value=y>6:30-6:45pm</td>
<td><input type=checkbox name=p6_7_4 value=y>6:45-7:00pm</td>
</tr><tr>
<td>7-8pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p7_8_1 value=y>7:00-7:15pm</td>
<td><input type=checkbox name=p7_8_2 value=y>7:15-7:30pm</td>
<td><input type=checkbox name=p7_8_3 value=y>7:30-7:45pm</td>
<td><input type=checkbox name=p7_8_4 value=y>7:45-8:00pm</td>
</tr><tr>
<td>8-9pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p8_9_1 value=y>8:00-8:15pm</td>
<td><input type=checkbox name=p8_9_2 value=y>8:15-8:30pm</td>
<td><input type=checkbox name=p8_9_3 value=y>8:30-8:45pm</td>
<td><input type=checkbox name=p8_9_4 value=y>8:45-9:00pm</td>
</tr><tr>
<td>9-10pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p9_10_1 value=y>9:00-9:15pm</td>
<td><input type=checkbox name=p9_10_2 value=y>9:15-9:30pm</td>
<td><input type=checkbox name=p9_10_3 value=y>9:30-9:45pm</td>
<td><input type=checkbox name=p9_10_4 value=y>9:45-10:00pm</td>
</tr><tr>
<td>10-11pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p10_11_1 value=y>10:00-10:15pm</td>
<td><input type=checkbox name=p10_11_2 value=y>10:15-10:30pm</td>
<td><input type=checkbox name=p10_11_3 value=y>10:30-10:45pm</td>
<td><input type=checkbox name=p10_11_4 value=y>10:45-11:00pm</td>
</tr><tr>
<td>11-12pm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=p11_12_1 value=y>11:00-11:15pm</td>
<td><input type=checkbox name=p11_12_2 value=y>11:15-11:30pm</td>
<td><input type=checkbox name=p11_12_3 value=y>11:30-11:45pm</td>
<td><input type=checkbox name=p11_12_4 value=y>11:45-12:00pm</td>
</tr><tr>
<td>12-1am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type=checkbox name=a12_1_1 value=y>12:00-12:15am</td>
<td><input type=checkbox name=a12_1_2 value=y>12:15-12:30am</td>
<td><input type=checkbox name=a12_1_3 value=y>12:30-12:45am</td>
<td><input type=checkbox name=a12_1_4 value=y>12:45-1:00am</td>
</tr>

<br>
<tr><td><input type=submit name=t2 value=submit></td></tr>
</table>
</form>
</BODY>
</HTML>

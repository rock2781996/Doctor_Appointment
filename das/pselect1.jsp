<HTML>
<HEAD>

<TITLE>Patient  Appointment</TITLE>
<link rel="stylesheet" href="radio.css"></link>
</HEAD>

<BODY>
<%@include file="pat.jsp"%>
	
<form action="http://127.0.0.1:8080/das/pupdate1.jsp">
<%@page import="java.sql.*, java.io.*;"%>
<%		
String s1=(String)session.getAttribute("pid");
		String s2=request.getParameter("t1");
		String date="";
		String am1_2="";
		String am2_3="";
		String am3_4="";
		String am4_5="";
		String am5_6="";
		String am6_7="";
		String am7_8="";
		String am8_9="";
		String am9_10="";
		String am10_11="";
		String am11_12="";
		String pm12_1="";
		String pm1_2="";
		String pm2_3="";
		String pm3_4="";
		String pm4_5="";
		String pm5_6="";
		String pm6_7="";
		String pm7_8="";
		String pm8_9="";
		String pm9_10="";
		String pm10_11="";
		String pm11_12="";
		String am12_1="";
	    String a="";
		  String b="";
		    String c="";
			
			    int m=0;
boolean chekapp=false;
try
		{
		

		String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			 ResultSet rs;
			 rs=stmt.executeQuery("select * from patappon where pid='"+s1+"' and date='"+s2+"' ");
			  while(rs.next())
			{
			 chekapp=true;
a=rs.getString("time");

c=rs.getString("status");
m=c.indexOf('p');

	 }
			rs=stmt.executeQuery("select * from appointment where date='"+s2+"'");
			
			
			 while(rs.next())
			{
			
			 date=rs.getString("date"); 
			 am1_2=rs.getString("a1_2");
			 am2_3=rs.getString("a2_3");
			 am3_4=rs.getString("a3_4");
			 am4_5=rs.getString("a4_5");
			 am5_6=rs.getString("a5_6");
			 am6_7=rs.getString("a6_7");
			 am7_8=rs.getString("a7_8");
			 am8_9=rs.getString("a8_9");
			 am9_10=rs.getString("a9_10");
			 am10_11=rs.getString("a10_11");
			 am11_12=rs.getString("a11_12");
			 pm12_1=rs.getString("p12_1");
			 pm1_2=rs.getString("p1_2");
			 pm2_3=rs.getString("p2_3");
			 pm3_4=rs.getString("p3_4");
			 pm4_5=rs.getString("p4_5");
			 pm5_6=rs.getString("p5_6");
			 pm6_7=rs.getString("p6_7");
			 pm7_8=rs.getString("p7_8");
			 pm8_9=rs.getString("p8_9");
			 pm9_10=rs.getString("p9_10");
			 pm10_11=rs.getString("p10_11");
			 pm11_12=rs.getString("p11_12");
			 am12_1=rs.getString("a12_1");
			}
		}
		catch (Exception e)
		{
          out.println("got an exception");
		  out.println(e);

		}
		
		%>
		<br>
		<table align=center >
		<tr><td><b>Date<input type=text name=t1 value=<%=date%>></b></td></tr>
		</table>
		<br>
		
		<table border=2 align=center>
		<h4  id=c1>RED: slot available</h4>
		<h4  id=c2>GREEN:no slot available</h4>
		<h4  id=c3>BLUE: your slot</h4>
		<h3 align=center>Morning time</h3>
		<%
	if(chekapp)
			{
			time1(am1_2,a,m,out,"1","2","am");
			
			time1(am2_3,a,m,out,"2","3","am");
			
            time1(am3_4,a,m,out,"3","4","am");
			
			time1(am4_5,a,m,out,"4","5","am");
			
			time1(am5_6,a,m,out,"5","6","am");
			
			time1(am6_7,a,m,out,"6","7","am");
			
			time1(am7_8,a,m,out,"7","8","am");
			
			time1(am8_9,a,m,out,"8","9","am");
			
			time1(am9_10,a,m,out,"9","10","am");
			
			time1(am10_11,a,m,out,"10","11","am");
			
			time1(am11_12,a,m,out,"11","12","am");
			
			time1(pm12_1,a,m,out,"12","1","pm");
			
			time1(pm1_2,a,m,out,"1","2","pm");
			
			time1(pm2_3,a,m,out,"2","3","pm");
			
			time1(pm3_4,a,m,out,"3","4","pm");
			%>
			</table>
			<h3 align=center>Evening Time</h3>
			<table border=2 align=center>
			<% 
			time1(pm4_5,a,m,out,"4","5","pm");
			
			time1(pm5_6,a,m,out,"5","6","pm");
			
			time1(pm6_7,a,m,out,"6","7","pm");
			
			time1(pm7_8,a,m,out,"7","8","pm");
			
			time1(pm8_9,a,m,out,"8","9","pm");
			
			time1(pm9_10,a,m,out,"9","10","pm");
			
			time1(pm10_11,a,m,out,"10","11","pm");
			
			time1(pm11_12,a,m,out,"11","12","pm");
			
			time1(am12_1,a,m,out,"12","1","am");
			}
			else
			{
				out.println("no appoienemt available");
			}
			%>

</table>
<table align=center>
<tr><td><input type=submit name=t8 value=done></td></tr>
</table>
</form>
</BODY>
</HTML>
<%! 
				
             
			void time1(String ar,String time,int m,JspWriter out,String st,String et,String sl) throws IOException
			{   
			    out.println("<tr>");
			
			if(!ar.equals("nnnn"))
				{	out.println("<td>");
					 out.println(st+"-"+et+sl);
					out.println("</td>");
if((ar.substring(0,1)).equals("s"))
					{
     
	if(time.equals(sl.substring(0,1)+st+"_"+et)){
		
		if(m==0){
				out.println("<td class=checked>");
				out.println(st+":00-"+st+":15"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"checked>");
				out.println("</td>");
					}else
						
					{
				out.println("<td class=disabled>");
				out.println(st+":00-"+st+":15"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"disabled>");
				out.println("</td>");
					}
	}else
						
					{
				out.println("<td class=disabled>");
				out.println(st+":00-"+st+":15"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"disabled>");
				out.println("</td>");
					}
	}
					if((ar.substring(0,1)).equals("y"))
				{	
				
				out.println("<td class=enabled>");
				out.println(st+":00-"+st+":15"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\">");
				out.println("</td>");
				}
				if((ar.substring(1,2)).equals("s"))
					{
if(time.equals(sl.substring(0,1)+st+"_"+et)){
		if(m==1){
				out.println("<td class=checked>");
				out.println(st+":15-"+st+":30"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_2"+"\"checked>");
				out.println("</td>");
					}
			else
					{
				out.println("<td class=disabled>");
				out.println(st+":15-"+st+":30"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"disabled>");
				out.println("</td>");
					}}else
					{
				out.println("<td class=disabled>");
				out.println(st+":15-"+st+":30"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"disabled>");
				out.println("</td>");}}
				if((ar.substring(1,2)).equals("y"))
				{   
				
				out.println("<td class=enabled>");
				out.println(st+":15-"+st+":30"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_2"+"\">");
				out.println("</td>");
				}
				if((ar.substring(2,3)).equals("s"))
					{
	if(time.equals(sl.substring(0,1)+st+"_"+et)){
		if(m==2){
				out.println("<td class=checked>");
				out.println(st+":30-"+st+":45"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_3"+"\"checked>");
				out.println("</td>");
					}
				else
					{
				out.println("<td class=disabled>");
				out.println(st+":30-"+st+":45"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"disabled>");
				out.println("</td>");
					}}else
					{
				out.println("<td class=disabled>");
				out.println(st+":30-"+st+":45"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"disabled>");
				out.println("</td>");}}
				if((ar.substring(2,3)).equals("y"))
				{	
				
				out.println("<td class=enabled>");
				out.println(st+":30-"+st+":45"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_3"+"\">");
				out.println("</td>");
				}
				if((ar.substring(3,4)).equals("s"))
					{
if(time.equals(sl.substring(0,1)+st+"_"+et)){
		if(m==3){
				out.println("<td class=checked>");
				out.println(st+":45-"+st+":00"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_4"+"\"checked>");
				out.println("</td>");
					}
				else
					{
				out.println("<td class=disabled>");
				out.println(st+":45-"+et+":00"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"disabled>");
				out.println("</td>");
					}}
					else
					{
				out.println("<td class=disabled>");
				out.println(st+":45-"+et+":00"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\"disabled>");
				out.println("</td>");}}
				if((ar.substring(3,4)).equals("y"))
				{	
				
				out.println("<td class=enabled>");
				out.println(st+":45-"+et+":00"+sl+"<input type=radio name=r value=\""+sl.substring(0,1)+st+"_"+et+"_4"+"\">");
				out.println("</td>");
				}
				out.println("</tr>");
		}
			}	
			%>
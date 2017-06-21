<HTML>
<HEAD>
<TITLE> slots information</TITLE>
<link rel="stylesheet" href="text.css"></link>
<script src="datetimepicker_css.js"></script>
</HEAD>
<BODY>

	
	<%@include file="doc.jsp"%>

	
<%@page import="java.sql.*, java.io.*;"%>
	
		
		<%!
		String s1="";
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
		String a;
		String b;
		String c;
		String d;
		String e;
		String f;
		String g;
		String h;
		String i;
		String j;
			String k;
				String l;%>

<%
String s1=request.getParameter("t1");%>
<form action="http://127.0.0.1:8080/das/dselect1.jsp">
<table  style="border-style:solid; background-color:white;">
<br><br>
<tr><td>Date<input type="Text" name=t1 id="demo1" maxlength="25" size="25" value=<%=s1%> >
        <img src="cal.gif" onclick="javascript:NewCssCal('demo1')" style="cursor:pointer"/></td></tr>
<tr><td><input type=submit  value=search></td></tr>
</table>
	</form>
<%try
		{
		

		String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			 ResultSet rs;
			 
			 out.println(s1);
			 rs=stmt.executeQuery("select * from appointment where date='"+s1+"'");
			 
			 while(rs.next())
			{  
				 out.println("hey");
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
			out.println(pm4_5);
		}
		catch (Exception e)
		{
          out.println("got an exception");
		  out.println(e);

		}
		//out.println("Date<input type=text name=t1 value='"+s1+"'>");
		%>
		<br>
	
		<h3  align=center>Morning time</h3>
		<table  align=center>
		<%
			
			time1(am1_2,out ,s1,"1","2","am");
			
			time1(am2_3,out,s1,"2","3","am");
			
            time1(am3_4,out,s1,"3","4","am");
			
			time1(am4_5,out,s1,"4","5","am");
			
			time1(am5_6,out,s1,"5","6","am");
			
			time1(am6_7,out,s1,"6","7","am");
			
			time1(am7_8,out,s1,"7","8","am");
			
			time1(am8_9,out,s1,"8","9","am");
			
			time1(am9_10,out,s1,"9","10","am");
			
			time1(am10_11,out,s1,"10","11","am");
			
			time1(am11_12,out,s1,"11","12","am");
			
			time1(pm12_1,out,s1,"12","1","pm");
			
			time1(pm1_2,out,s1,"1","2","pm");
			
			time1(pm2_3,out,s1,"2","3","pm");
			
			time1(pm3_4,out,s1,"3","4","pm");
			%>
			</table>
			<h3 align=center>Evening Time</h3>
			<table  align=center>
			<% 
			time1(pm4_5,out,s1,"4","5","pm");
			
			time1(pm5_6,out,s1,"5","6","pm");
			
			time1(pm6_7,out,s1,"6","7","pm");
			
			time1(pm7_8,out,s1,"7","8","pm");
			
			time1(pm8_9,out,s1,"8","9","pm");
			
			time1(pm9_10,out,s1,"9","10","pm");
			
			time1(pm10_11,out,s1,"10","11","pm");
			
			time1(pm11_12,out,s1,"11","12","pm");
			
			time1(am12_1,out,s1,"12","1","am");
			%>

</table>


</BODY>
</HTML>

<%! 
				
             
			void time1(String ar,JspWriter out, String s1,String st,String et,String sl) throws IOException
			{   
				if(!ar.equals("nnnn"))
				{
					out.println("<tr ><td><h2>");
					out.println(st+"-"+et+sl); 
					out.println("</h2></td></tr>");

				if((ar.substring(0,1)).equals("y"))
				{
						 
				//	out.println("+log[0]+"<input type=checkbox name=\"aa_1\" value=y checked>"+");
				out.println("<tr><td class=c>");
				out.println(st+":00-"+st+":15"+sl+"</td><td>&nbsp&nbsp&nbsp&nbsp slot is free");
				out.println("</td></tr>");
				}
				if((ar.substring(0,1)).equals("s"))
				{
try
		{
		

		String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			 ResultSet rs;
			
			 
			 rs=stmt.executeQuery("select pid from patappon where date='"+s1+"' and time='"+sl.substring(0,1)+st+"_"+et+"' and status='pxxx' ");
		
			 while(rs.next())
			{  
				 a=rs.getString("pid");
				 }
				
 rs=stmt.executeQuery("select * from patient_reg where pid='"+a+"' ");
	 while(rs.next())
			{  
				b=rs.getString("fname");
				c=rs.getString("lname");
				}
out.println("<tr><td class=c1>");
				out.println(st+":00-"+st+":15"+sl+"</td><td>&nbsp&nbsp&nbsp&nbsp"+a+"</td><td>"+b+"</td><td>"+c+"</td>");
				out.println("</tr>");
				}
				catch (Exception e)
		{
          out.println("got an exception");
		  out.println(e);
		}}
				if((ar.substring(1,2)).equals("y"))
				{
					
				//	out.println("+log[0]+"<input type=checkbox name=\"aa_1\" value=y checked>"+");
				out.println("<tr><td class=c>");
				out.println(st+":15-"+st+":30"+sl+"</td><td>&nbsp&nbsp&nbsp&nbsp slot is free");
				out.println("</td></tr>");
				}
			if((ar.substring(1,2)).equals("s"))
				{
				try
		{
		

		String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			 ResultSet rs;
			 
			 
			 rs=stmt.executeQuery("select pid from patappon where date='"+s1+"' and time='"+sl.substring(0,1)+st+"_"+et+"' and status='xpxx' ");
			 
			 while(rs.next())
			{  
				 d=rs.getString("pid");
				 }
 rs=stmt.executeQuery("select * from patient_reg where pid='"+d+"' ");
	 while(rs.next())
			{  
				e=rs.getString("fname");
				f=rs.getString("lname");
				}

				out.println("<tr><td class=c1>");
				out.println(st+":15-"+st+":30"+sl+"</td><td>&nbsp&nbsp&nbsp&nbsp"+d+"</td><td>"+e+"</td><td>"+f+"</td>");
				out.println("</tr>");
				}
	catch (Exception e)
		{
          out.println("got an exception");
		  out.println(e);
		}}
				if((ar.substring(2,3)).equals("y"))
				{
					
				//	out.println("+log[0]+"<input type=checkbox name=\"aa_1\" value=y checked>"+");
				out.println("<tr><td class=c>");
				out.println(st+":30-"+st+":45"+sl+"</td><td>&nbsp&nbsp&nbsp&nbsp slot is free");
				out.println("</td></tr>");
				}
			if((ar.substring(2,3)).equals("s"))
				{
					try
		{
		

		String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			 ResultSet rs;
			 
			 
			 rs=stmt.executeQuery("select pid from patappon where date='"+s1+"' and time='"+sl.substring(0,1)+st+"_"+et+"' and status='xxpx' ");
			 
			 while(rs.next())
			{  
				 g=rs.getString("pid");
				 }
 rs=stmt.executeQuery("select * from patient_reg where pid='"+g+"' ");
	 while(rs.next())
			{  
				h=rs.getString("fname");
				i=rs.getString("lname");
				}

				out.println("<tr><td class=c1>");
				out.println(st+":30-"+st+":45"+sl+"</td><td>&nbsp&nbsp&nbsp&nbsp"+g+"</td><td>"+h+"</td><td>"+i+"</td>");
				out.println("</tr>");
				}
				catch (Exception e)
		{
          out.println("got an exception");
		  out.println(e);
		}}
				
				if((ar.substring(3,4)).equals("y"))
				{
					
				//	out.println("+log[0]+"<input type=checkbox name=\"aa_1\" value=y checked>"+");
				out.println("<tr><td class=c>");
				out.println(st+":45-"+et+":00"+sl+"</td><td>&nbsp&nbsp&nbsp&nbspslot is free");
				out.println("</td></tr>");
				}
			if((ar.substring(3,4)).equals("s"))
				{
	try
		{
		

		String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			 ResultSet rs;
			 
			 
			 rs=stmt.executeQuery("select pid from patappon where date='"+s1+"' and time='"+sl.substring(0,1)+st+"_"+et+"' and status='xxxp' ");
			 
			 while(rs.next())
			{  
				 j=rs.getString("pid");
				 } 
 rs=stmt.executeQuery("select * from patient_reg where pid='"+j+"' ");
	 while(rs.next())
			{  
				k=rs.getString("fname");
				l=rs.getString("lname");
				}

				out.println("<tr><td class=c1>");
				out.println(st+":45-"+et+":00"+sl+"</td><td>&nbsp&nbsp&nbsp&nbsp"+j+"</td><td>"+k+"</td><td>"+l+"</td>");
				out.println("</tr>");
				}
				
	catch (Exception e)
		{
          out.println("got an exception");
		  out.println(e);
		}}

}}
%>
</body>
</html>
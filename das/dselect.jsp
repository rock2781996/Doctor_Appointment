<HTML>
<HEAD>
<TITLE> select </TITLE>
</HEAD>
<BODY>
	<%@include file="doc.jsp"%>

	
<form action="http://127.0.0.1:8080/das/update.jsp">
<%@page import="java.sql.*, java.io.*;"%>
<%		
		String s1=request.getParameter("t1");
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

try
		{
		

		String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			 ResultSet rs;
			 
			 
			 rs=stmt.executeQuery("select * from appointment where date='"+s1+"'");
			 
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
		//out.println("Date<input type=text name=t1 value='"+s1+"'>");
		%>
		<br>
		<b>Date<input type=text name=t1 value="<%=date%>"></b>
		<h3 align=center>Morning time</h3>
		<table border=1 align=center>
		<%
			
			time1(am1_2,out,"1","2","am");
			
			time1(am2_3,out,"2","3","am");
			
            time1(am3_4,out,"3","4","am");
			
			time1(am4_5,out,"4","5","am");
			
			time1(am5_6,out,"5","6","am");
			
			time1(am6_7,out,"6","7","am");
			
			time1(am7_8,out,"7","8","am");
			
			time1(am8_9,out,"8","9","am");
			
			time1(am9_10,out,"9","10","am");
			
			time1(am10_11,out,"10","11","am");
			
			time1(am11_12,out,"11","12","am");
			
			time1(pm12_1,out,"12","1","pm");
			
			time1(pm1_2,out,"1","2","pm");
			
			time1(pm2_3,out,"2","3","pm");
			
			time1(pm3_4,out,"3","4","pm");
			%>
			</table>
			<h3 align=center>Evening Time</h3>
			<table border=1 align=center>
			<% 
			time1(pm4_5,out,"4","5","pm");
			
			time1(pm5_6,out,"5","6","pm");
			
			time1(pm6_7,out,"6","7","pm");
			
			time1(pm7_8,out,"7","8","pm");
			
			time1(pm8_9,out,"8","9","pm");
			
			time1(pm9_10,out,"9","10","pm");
			
			time1(pm10_11,out,"10","11","pm");
			
			time1(pm11_12,out,"11","12","pm");
			
			time1(am12_1,out,"12","1","am");
			%>

</table>
<input type=submit name=t5 value=update>
</form>
</BODY>
</HTML>
<%! 
				
             
			void time1(String ar,JspWriter out,String st,String et,String sl) throws IOException
			{   
				if((ar.substring(0,1)).equals("y"))
				{
					out.println("<tr><td>");
					out.println(st+"-"+et+sl); 
					out.println("</td>");
				//	out.println("+log[0]+"<input type=checkbox name=\"aa_1\" value=y checked>"+");
				out.println("<td>");
				out.println(st+":00-"+st+":15"+sl+"<input type=checkbox name=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\" value=y checked>");
				out.println("</td>");
				}
				else
				{	out.println("<tr><td>");
				out.println(st+"-"+et+sl);
				out.println("</td><td>");
				out.println(st+":00-"+st+":15"+sl+"<input type=checkbox name=\""+sl.substring(0,1)+st+"_"+et+"_1"+"\" value=y >");
				out.println("</td>");
				}
				if((ar.substring(1,2)).equals("y"))
				{
					
				//	out.println("+log[0]+"<input type=checkbox name=\"aa_1\" value=y checked>"+");
				out.println("<td>");
				out.println(st+":15-"+st+":30"+sl+"<input type=checkbox name=\""+sl.substring(0,1)+st+"_"+et+"_2"+"\" value=y checked>");
				out.println("</td>");
				}
				else
				{
				out.println("<td>");
				out.println(st+":15-"+st+":30"+sl+"<input type=checkbox name=\""+sl.substring(0,1)+st+"_"+et+"_2"+"\" value=y >");
				out.println("</td>");
				}
				if((ar.substring(2,3)).equals("y"))
				{
					
				//	out.println("+log[0]+"<input type=checkbox name=\"aa_1\" value=y checked>"+");
				out.println("<td>");
				out.println(st+":30-"+st+":45"+sl+"<input type=checkbox name=\""+sl.substring(0,1)+st+"_"+et+"_3"+"\" value=y checked>");
				out.println("</td>");
				}
				else
				{
				out.println("<td>");
				out.println(st+":30-"+st+":45"+sl+"<input type=checkbox name=\""+sl.substring(0,1)+st+"_"+et+"_3"+"\" value=y >");
				out.println("</td>");
				}
				if((ar.substring(3,4)).equals("y"))
				{
					
				//	out.println("+log[0]+"<input type=checkbox name=\"aa_1\" value=y checked>"+");
				out.println("<td>");
				out.println(st+":45-"+et+":00"+sl+"<input type=checkbox name=\""+sl.substring(0,1)+st+"_"+et+"_4"+"\" value=y checked>");
				out.println("</td>");
				}
				else
				{
				out.println("<td>");
				out.println(st+":45-"+et+":00"+sl+"<input type=checkbox name=\""+sl.substring(0,1)+st+"_"+et+"_4"+"\" value=y >");
				out.println("</td>");
				}
				out.println("</tr>");


}
%>
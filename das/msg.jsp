
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %><html>
<head>

<TITLE>Doctor inbox</TITLE>

</head>
<body>
<%@include file="doc.jsp"%>


<%@page import="java.sql.*"%>


<%      

 String s0=request.getParameter("id");

        String s1=request.getParameter("p1");
		String s2=request.getParameter("p2");
		String s3=request.getParameter("p3");
		String s4=request.getParameter("p4");
		String s5=request.getParameter("p5");
      String mid="";
			String name="";
			String subject="";
			String attachment="";
			String mail="";
			String date="";
			
		

	try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		
		
			ResultSet rs;
			rs=stmt.executeQuery("select * FROM docinbox where mid='"+s0+"' ");//functionality
			
		
			%>

  <h1 align=center>INBOX</h1>
  <%
 
			while(rs.next())
			{   
				 mid=rs.getString("mid");
				
				 name=rs.getString("name");
				 subject=rs.getString("subject");
				 mail=rs.getString("mail");
				 attachment=rs.getString("attachment");
				 date=rs.getString("date");
				 
				 %>
				
				<% 

if(attachment.equals(null))
			{
			   attachment="n";
			}
			
			if(attachment.equals("y"))
			{ %>
				<td><b><a href="">Attachment</a></b></td>
			<%}
			else
			{ %>
				<td><b></b></td>
			<%} %>
			
			
				 
			<%}
			}
			

catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
			
		 %>
		 <form action="">

<h2>
<table align=center style="border-style:solid; background-color:white;">
<tr><td>To</td><td><INPUT TYPE=TEXT NAME=p1 value="<%=name%>" ></td></tr>

<tr><td>Subject</td><td><textarea ROWS="4" COLUMNS="20" name=p2  value=""><%=subject%></textarea></td></tr>
<tr><td>E-mail space</td><td><textarea ROWS="4" COLUMNS="20" name=p3  value=""><%=mail%></textarea></td></tr>
<tr><td>Attachment</td><td><input type=text name=p4 value="<%=attachment%>"></td></tr>


<tr><td>Date</td><td><input type="Text"  name=p5 value="<%=date%>" />
       

</form>



</table>
</h2>

</BODY>
</HTML>
		    
	</table>
	<tr><td><form action="http://127.0.0.1:8080/das/docmail.jsp"> <h1 align=center><input  type=submit value="REPLY"></form></td></tr>
  

<br>
</h2>
</body>
  </html>
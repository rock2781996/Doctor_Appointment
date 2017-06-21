<html>
<head>

<TITLE>patient inbox</TITLE>

</head>
<body>
<%@include file="pat.jsp"%>


<%@page import="java.sql.*"%>
<%   

String value =(String)session.getAttribute("username");

//out.println("r1" + " = " + value);

String s0=value;

        String s1=request.getParameter("t1");
		String s2=request.getParameter("t2");
		String s3=request.getParameter("t3");
		String s4=request.getParameter("t4");
		String s5=request.getParameter("t5");
		String s6=request.getParameter("t6");
      
		
		

	try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		
		
			ResultSet rs;
		//	rs=stmt.executeQuery("select * FROM docmail,patient_reg where docmail.to=patient_reg.fname");//functionality
			rs=stmt.executeQuery("select * FROM docmail where `to`='"+s0+"' ");
			String mid="";
			String subject="";
			String attachment="";
			String mail="";
			String date="";
			
			%>

  <h1 align=center>INBOX</h1>
  <h2>
  <table align=center style=border-style:solid border=2>
  <tr><td><b>mid</b></td><td><b>Subject</b></td><td><b>Mail</b></td><td><b>Attachment</b></td><td><b>Date</b></td></tr>
			<%
			while(rs.next())
			{    
				 mid=rs.getString("mid");
				 subject=rs.getString("subject");
				 mail=rs.getString("mail");
				 attachment=rs.getString("attachment");
				 date=rs.getString("date");
				 %>
				 <tr><td><b><a href="http://127.0.0.1:8080/das/msgp.jsp?id=<%=mid%>"><%=mid%></a></b></td><td><b><a href="http://127.0.0.1:8080/das/msgp.jsp?id=<%=mid%>"><%=subject%></a></b></td><td><b><a href="http://127.0.0.1:8080/das/msgp.jsp?id=<%=mid%>"><%=mail%></a></b></td>
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
			
			<td><b><a href=""><%=date%></a></b></td></tr>
				 
			<%}
			}
catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
			
		 %>
  

	</table>
<br>
</h2>
</body>
  </html>
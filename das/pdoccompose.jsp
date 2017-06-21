<html>
<HEAD>

<TITLE>MAIL SENT</TITLE>

</HEAD>
<BODY>
<%@include file="doc.jsp"%>

<%@page import="java.sql.*"%>

<%   		
        String s1=request.getParameter("p1");
		String s2=request.getParameter("p2");
		String s3=request.getParameter("p3");
		String s4=request.getParameter("p4");
		String s5=request.getParameter("p5");
		
       
		

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		
			ResultSet rs;
			
			stmt.executeUpdate("insert into docmail values(null,'"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
			
			
			

		}
		catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
  %>
  <h1 align=center>THE MAIL HAS BEEN SENT!!</h1>
  </body>
  </html>
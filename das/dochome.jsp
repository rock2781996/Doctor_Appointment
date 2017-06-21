<html>
<head>
<title> Doctor Homepage </title>
</head>
<body>
<%@include file="doc.jsp"%>
<%@page import="java.sql.*;"%>

<%String value =(String)session.getAttribute("username");

String s0=value;
	String fname=" ";
			String lname=" ";
	try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
  rs=stmt.executeQuery("select fname,lname FROM doctor_reg where username='"+s0+"'");
			
              while(rs.next())
			{    
				 fname=rs.getString("fname");
                   lname=rs.getString("lname");
		 
            } 
}
catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}%>
<marquee direction=right>
<H1 align=center>welcome <%out.println(fname);%> <%out.println(lname);%></H1>
</marquee>
</BODY>
</HTML>

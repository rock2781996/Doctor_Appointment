<HTML>

<HEAD>

<TITLE>Patient Homepage</TITLE>
	
</HEAD>
<BODY>
<%@include file="pat.jsp"%>
<%@page import="java.sql.*;"%>

<%String value =(String)session.getAttribute("pid");

String s0=value;
	String fname=" ";
			String lname=" ";
	try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
  rs=stmt.executeQuery("select fname,lname FROM patient_reg where pid='"+s0+"'");
			
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

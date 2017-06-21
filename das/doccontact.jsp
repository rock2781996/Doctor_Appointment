<HTML>
<HEAD>
<TITLE>Doctor Homepage</TITLE>
</HEAD>
<BODY>
<%@include file="doc.jsp"%>


	<br>
<%@page import="java.sql.*"%>
<%      String s1=request.getParameter("a1");
		String s2=request.getParameter("a2");
		String s3=request.getParameter("a3");
		String s4=request.getParameter("ac1");
		String s5=request.getParameter("ac2");
		String s6=request.getParameter("ac3");
		String s7=request.getParameter("pid");

		
            
			String fname="";
			String lname="";
			String username="";
			String phno="";
			String hono="";
			String mail="";
			String pid="";
			int no=1;

			try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
			rs=stmt.executeQuery("select * FROM patient_reg");//functionality
			
			



            

  %>
  <h1 align=center>Contacts</h1>
  <h2>
  <table align=center style=border-style:solid border=2>
  <tr><td><b>S No.</b></td><td><b>Patient Id</b></td><td><b>Patient Name</b></td><td><b>Username</b></td><td><b>Phone no.</b></td><td><b>E-mail</b></td></tr>
		
		<%
              while(rs.next())
			{    
                  pid=rs.getString("pid");
				 fname=rs.getString("fname");
                   lname=rs.getString("lname");
				   username=rs.getString("username");
				   phno=rs.getString("officePh");
				   hono=rs.getString("homePh");
                   mail=rs.getString("mail");
				     } 	%>
					 <tr><td><b><a href=""><%=no%></a></b></td><td><b><a href=""><%=pid%></a></b></td><td><b><a href=""><%=fname%>&nbsp;<%=lname%> </a></b></td><td><b><a 
					 href=""><%=username%></a></b></td><td><b><a href=""><%=phno%>&nbsp; , &nbsp;<%=hono%></a></b></td><td><b><a href=""><%=mail%></a></b></td></tr>

					<% no=no+1;}
					
					 catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}%>
	</body>
	</html>

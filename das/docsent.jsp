<html>
<head>

<TITLE>Doctor Homepage</TITLE>

</HEAD>
<body>
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
			rs=stmt.executeQuery("select * FROM docmail");//functionality
			
			String to="";
			String subject="";
			String attachment="";
			String mail="";
			String date="";
			int no=1;
			out.println("<html>");
  out.println("<head>");
  out.println("<title>docsentmail</title>");
  out.println("</head>");
  out.println("<body>");
  out.println("<h1 align=center>SENT MAILS</h1>");
  out.println("<h2>");
  out.println("<table align=center style=border-style:solid; background-color:white;>");
  out.println("<tr><td>S No.</td><td>To &nbsp;</td><td>Subject</td><td>Mail</td><td>Attachment &nbsp;</td><td>Date</td></tr>");
			
			while(rs.next())
			{    
				 to=rs.getString("to");
				 subject=rs.getString("subject");
				 mail=rs.getString("mail");
				 attachment=rs.getString("attachment");
				 date=rs.getString("date");
				 out.println("<tr><td><input type=text name=t1 value='"+no+"'></td><td><input type=text name=t2 value='"+to+"'></td><td><INPUT TYPE=TEXT NAME=t3 VALUE='"+subject+"'></td><td><input type=text name=t4 value='"+mail+"'></td><td><input type=text name=t5 value='"+attachment+"'></td>");
				 no=no+1;


			out.println("<td><INPUT TYPE=TEXT NAME=t6 VALUE='"+date+"'></td></tr>");
				 
			}
			
		
  

			out.println("</table>");
out.println("<br>");
out.println("</h2>");
out.println("</body>");
out.println("</html>");
}
catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
  %>
  </body>
  </html>
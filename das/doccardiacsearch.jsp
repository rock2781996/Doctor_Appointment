<html>
<head>
<title>LOGIN</title>
</head>
<body>
<%@include file="doc.jsp"%>

	<br>
	<br>
<%@page import="java.sql.*"%>
<%   
String value =(String)session.getAttribute("pid");

String s0=value;

   
	

            
			String reportid="";
		
			
		
			
		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
		//	rs=stmt.executeQuery("select * FROM patient_reg ");//functionality
			
			rs=stmt.executeQuery("select * FROM cardiac where pid='"+s0+"'");

              while(rs.next())
			{    
                  reportid=rs.getString("reportid");

                 //  date=rs.getString("date");
				%>
				<table align=center>
			report_id <input type=text value="<%=reportid%>" >
		 
				 <br>
				 </table>
<%
            } 


}
catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
            

  %>
  <h1> which report you want to open enter report_id below</h1>
  <form action="http://127.0.0.1:8080/das/docshowcardiacreport.jsp">
  Report_id <input type=text name=rid>
  <input type=submit>

  
</body>
</html>
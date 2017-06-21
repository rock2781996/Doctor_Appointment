<html>
<head>
<title>LOGIN</title>
</head>
<body>
<%@include file="pat.jsp"%>

	<br>
	<br>
<%@page import="java.sql.*"%>
<%   
String value =(String)session.getAttribute("pid");

String s0=value;

   
	

            
			String reportid="";
		
			String date="";
		
			
		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
		//	rs=stmt.executeQuery("select * FROM patient_reg ");//functionality
			
			rs=stmt.executeQuery("select * FROM blood_report where pid='"+s0+"'");

              while(rs.next())
			{    
                  reportid=rs.getString("reportid");

                   date=rs.getString("date");
				%>
				<table align=center>
			report_id <input type=text value="<%=reportid%>" >
			date <input type=text value="<%=date%>" >
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
  <form action="http://127.0.0.1:8080/das/showbloodreport.jsp">
  Report_id <input type=text name=rid>
  <input type=submit>

  
</body>
</html>
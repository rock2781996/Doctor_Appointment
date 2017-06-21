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
String value =(String)session.getAttribute("username");

String s0=value;

        String s1=request.getParameter("pname");
		String s2=request.getParameter("lname");
		String s3=request.getParameter("labno");
		String s4=request.getParameter("age");
		String s5=request.getParameter("gender");
		String s6=request.getParameter("date");
		String s7=request.getParameter("bloodgroup");
		String s8=request.getParameter("hemoglobin");
        String s9=request.getParameter("rbc");
		String s10=request.getParameter("wbc");
		
            String pname="";
			String lname="";
			String labno="";
			String age="";
			String gender="";
			String date="";
			String bloodgroup="";
			String hemoglobin="";
			String rbc="";
			String wbc="";
			
		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
				
			rs=stmt.executeQuery("select * blood_report where patient_name='"+s0+"'");

              while(rs.next())
			{    
                  pname=rs.getString("pname");
				 lname=rs.getString("lname");
                   labno=rs.getString("labno");
				   age=rs.getString("age");
				   gender=rs.getString("gender");
				   date=rs.getString("date");
                   bloodgroup=rs.getString("bloodgroup");
				   hemoglobin=rs.getString("hemoglobin");
				   rbc=rs.getString("rbc");
				    wbc=rs.getString("wbc");
				
				 
            } 
}
catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
            

  %>
<table align=center style="border-style:solid; background-color:white;">

<tr><th><b>BLOOD REPORT</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>Patient Name</b></td><td><%=pname%></td></tr>
<tr><td><b>Lab Assistent</b></td><td><%=lname%></td></tr>
<tr><td><b>Lab No.</b></td><td><%=labno%></td></tr>
<tr><td><b>Age</b></td><td><%=age%></td></tr>
<tr><td><b>Gender</b></td><td><%=gender%></td></tr>
<tr><td><b>Date</b></td><td><%=date%></td></tr>

<tr><td><b>Blood Group</b></td><td><%=bloodgroup%></td></tr>
<tr><td><b>Hemoglobin</b></td><td><%=hemoglobin%></td></tr>
<tr><td><b>RBC</b></td><td><%=rbc%></td></tr>
<tr><td><b>WBC</b></td><td><%=wbc%></td></tr>

</table>
<form action="http://127.0.0.1:8080/das/DAShomepage.jsp" align=center><input type=submit value="OK"></form>
</body>
</html>
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

        String s1=request.getParameter("rid");
		
		
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
				
			rs=stmt.executeQuery("select * from blood_report where reportid='"+s1+"'");

              while(rs.next())
			{    
                  pname=rs.getString("patient_name");
				 lname=rs.getString("lab_assistent");
                   labno=rs.getString("lab_no");
				   age=rs.getString("age");
				   gender=rs.getString("gender");
				   date=rs.getString("date");
                   bloodgroup=rs.getString("bgroup");
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
<tr><td><a href="http://127.0.0.1:8080/das/bloodsearch.jsp">show another blood report</a></td></tr>

</table>

</body>
</html>
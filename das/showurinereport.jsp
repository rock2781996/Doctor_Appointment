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

        String s1=request.getParameter("rid");
		
		String pid="";
			String rid="";
            String pname="";
			String assistentdoc="";
			String labno="";
			String age="";
			String gender="";
			String color="";
			String appearance="";
			String specific_g="";
			String ph="";
			String protin="";
			
		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
				
			rs=stmt.executeQuery("select * from urine where reportid='"+s1+"'");

              while(rs.next())
			{    
                  pid=rs.getString("pid");
				 rid=rs.getString("reportid");
                   pname=rs.getString("PATIENT NAME");
				   assistentdoc=rs.getString("ASSISTANT DOCTOR");
				   labno=rs.getString("LAB NO.");
				   age=rs.getString("AGE");
                   gender=rs.getString("SEX");
				   color=rs.getString("COLOR");
				   appearance=rs.getString("APPEARANCE");
				    specific_g=rs.getString("SPECIFIC GRAVITY");
					 ph=rs.getString("PH");
				    protin=rs.getString("PROTEIN(ACID PPT)");
				
				 
				
				 
            } 
}
catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
            

  %>
<table align=center style="border-style:solid; background-color:white;">

<tr><th><b>URINE REPORT</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>Patient ID</b></td><td><%=pid%></td></tr>
	<tr><td><b>Report ID </b></td><td><%=rid%></td></tr>
<tr><td><b>Patient Name</b></td><td><%=pname%></td></tr>
<tr><td><b>Assistent Doctor</b></td><td><%=assistentdoc%></td></tr>
<tr><td><b>Lab No.</b></td><td><%=labno%></td></tr>
<tr><td><b>Age</b></td><td><%=age%></td></tr>
<tr><td><b>Gender</b></td><td><%=gender%></td></tr>
<tr><td><b>Color</b></td><td><%=color%></td></tr>

<tr><td><b>Appearance</b></td><td><%=appearance%></td></tr>
<tr><td><b>Specific Gravity</b></td><td><%=specific_g%></td></tr>
<tr><td><b>Ph</b></td><td><%=ph%></td></tr>
<tr><td><b>PROTEIN(ACID PPT)</b></td><td><%=protin%></td></tr>
<tr><td><a href="http://127.0.0.1:8080/das/urinesearch.jsp">show another Urine report</a></td></tr>

</table>

</body>
</html>
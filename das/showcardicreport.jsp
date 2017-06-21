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
			String cholestrol="";
			String sgot="";
			String ldh="";
			String cpk="";
			String ckmb="";
			
		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
				
			rs=stmt.executeQuery("select * from cardiac where reportid='"+s1+"'");

              while(rs.next())
			{    
                  pid=rs.getString("pid");
				 rid=rs.getString("reportid");
                   pname=rs.getString("PATIENT NAME");
				   assistentdoc=rs.getString("ASSISTANT DOCTOR");
				   labno=rs.getString("LAB NO.");
				   age=rs.getString("AGE");
                   gender=rs.getString("SEX");
				   cholestrol=rs.getString("CHOLESTROL");
				   sgot=rs.getString("S.G.O.T.");
				    ldh=rs.getString("LDH");
					 cpk=rs.getString("CPK");
				    ckmb=rs.getString("CK-MB");
				
				 
				
				 
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
<tr><td><b>Cholestrol</b></td><td><%=cholestrol%></td></tr>

<tr><td><b>S.G.O.T.</b></td><td><%=sgot%></td></tr>
<tr><td><b>LDH</b></td><td><%=ldh%></td></tr>
<tr><td><b>CPK</b></td><td><%=cpk%></td></tr>
<tr><td><b>CK-MB</b></td><td><%=ckmb%></td></tr>
<tr><td><a href="http://127.0.0.1:8080/das/cardicsearch.jsp">show another cardiac report</a></td></tr>

</table>

</body>
</html>
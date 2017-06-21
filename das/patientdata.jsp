<html>
<HEAD>

<TITLE>Patient Registered</TITLE>
	
</HEAD>
<body>
<%@include file="main.jsp"%>
<%@page import="java.sql.*"%>
<%      
        String s1=request.getParameter("a1");
		String s2=request.getParameter("a2");
		String s3=request.getParameter("a3");
		String s4=request.getParameter("a4");
		String s5=request.getParameter("a5");
		String s6=request.getParameter("a6");
		String s7=request.getParameter("a7");
		String s8=request.getParameter("a8");
        String s9=request.getParameter("ac1");
		String s10=request.getParameter("ac2");
		String s11=request.getParameter("ac3");
		String s12=request.getParameter("ac4");
		String s13=request.getParameter("ac5");
		String s14=request.getParameter("ac6");
		String s15=request.getParameter("ac7");
		String s16=request.getParameter("ac8");
		String s17=request.getParameter("aq1");
		String s18=request.getParameter("aq2");
		String s19=request.getParameter("aq3");
		String s20=request.getParameter("aq4");
		String s21=request.getParameter("aq5");
		String s22=request.getParameter("aq6");

		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		
			
			
			stmt.executeUpdate("insert into patient_reg(fname,lname,username,gender,dob,mrecord,password,cpassword,officePh,homePh,mail,address,pin,district,state,country,highschool,intermediate,graduate,postgraduate,occupation,income) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"','"+s16+"','"+s17+"','"+s18+"','"+s19+"','"+s20+"','"+s21+"','"+s22+"')");
			
			stmt.executeUpdate("insert into login(username,password,status,type)values('"+s3+"','"+s7+"','A','P')");
			

		}
		catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
  %>
  <h1 align=center>Registration Complete!!</h1>
  <h2 align=center>Click here to view profile</h2>
  <form action="http://127.0.0.1:8080/das/patientview.jsp" align="center"><input type=submit value="View Profile"></form>
    </body>
  </html>
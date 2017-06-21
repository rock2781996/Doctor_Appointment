<html>
<HEAD>

<TITLE>Patient Registered</TITLE>
	
</HEAD>
<body>
<%@include file="doc.jsp"%>

	<%@page import="java.sql.*"%>
<%      String s1=request.getParameter("d1");
		String s2=request.getParameter("d2");
		String s3=request.getParameter("d3");
		String s4=request.getParameter("d4");
		String s5=request.getParameter("d5");
		String s6=request.getParameter("d6");
		String s7=request.getParameter("d7");
		String s8=request.getParameter("d8");
        String s9=request.getParameter("d9");
		String s10=request.getParameter("d10");
		String s11=request.getParameter("d11");
		String s12=request.getParameter("d12");
		String s13=request.getParameter("d13");
		String s14=request.getParameter("d14");
		String s15=request.getParameter("d15");
	
		String s18=request.getParameter("d18");
		String s19=request.getParameter("d19");
		String s20=request.getParameter("d20");
		String s21=request.getParameter("d21");
		String s22=request.getParameter("d22");
		String s23=request.getParameter("d23");
		String s24=request.getParameter("d24");

		
       session.setAttribute("d4",s4);

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		
			ResultSet rs;
			
			stmt.executeUpdate("insert into doctor_reg(fname,lname,username,gender,dob,password,cpassword,phn_office,phn_home,email,address,pincode,district,state,country,graduate,postgraduate,experiance,achievements,specialization,yog,yopg) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"','"+s18+"','"+s19+"','"+s20+"','"+s21+"','"+s22+"','"+s23+"','"+s24+"')");
			
			stmt.executeUpdate("insert into login(username,password,status,type)values('"+s3+"','"+s6+"','P','D')");
			

		}
		catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
  %>
  
   <h1 align=center>Registration Complete!!</h1>
  <h2 align=center>Click here to view profile</h2>
  <form action="http://127.0.0.1:8080/das/docview.jsp" align="center"><input type=submit value="View Profile"></form>
  </body>
  </html>
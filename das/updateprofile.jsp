<html>
<HEAD>

<TITLE>Patient Registered</TITLE>
	
</HEAD>
<body>
<%@include file="doc.jsp"%>



	<%@page import="java.sql.*"%>
<%    
String value =(String)session.getAttribute("pid");

String s3=value;

String s1=request.getParameter("a1");
		String s2=request.getParameter("a2");
	
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
		
			ResultSet rs;
			
	out.println(s1);
	out.println(s2);
	out.println(s3);
	out.println(s4);
	out.println(s5);
	out.println(s6);
	out.println(s7);
	out.println(s8);
	out.println(s9);
	out.println(s10);
	out.println(s11);
	out.println(s12);
	out.println(s13);
	out.println(s14);
	out.println(s15);
	out.println(s16);
	out.println(s17);
	out.println(s18);
	out.println(s19);
	out.println(s20);
	out.println(s21);
	out.println(s22);
	
stmt.executeUpdate("UPDATE  `project`.`patient_reg` SET  `fname` =  '"+s1+"',`lname` =  '"+s2+"',`gender` =  '"+s4+"',`dob` =  '"+s5+"',`mrecord` =  '"+s6+"',password='"+s7+"',cpassword='"+s8+"',`officePh` =  '"+s9+"',`homePh` =  '"+s10+"',`mail` =  '"+s11+"',`address` =  '"+s12+"',`pin` =  '"+s13+"',`district` =  '"+s14+"',`state` =  '"+s15+"',`country` =  '"+s16+"',`highschool` =  '"+s17+"',`intermediate` =  '"+s18+"',`graduate` =  '"+s19+"',`postgraduate` =  '"+s20+"',`occupation` =  '"+s21+"',`income` =  '"+s22+"' WHERE  pid='"+s3+"' ");
     }
		catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
  %>
  <h1>Updated Successfully</h1>
  </body>
  </html>
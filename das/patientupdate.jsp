<html>
<HEAD>

<TITLE>Patient Registered</TITLE>
	
</HEAD>
<body>
<%@include file="pat.jsp"%>



	<%@page import="java.sql.*"%>
<%    
String value =(String)session.getAttribute("username");

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
		
out.println(ac7);
try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		
			ResultSet rs;
			
	/*		String s23="update patient_reg set fname='"+s1+"',lname='"+s2"',gender='"+s4+"',dob='"+s5+"',mrecord='"+s6+"',password='"+s7+"',cpassword='"+s8+"',officePh='"+s9+"',homePh='"+s10+"', mail='"+s11+"',address='"+s12+"',pin='"+s13+"',district='"+s14+"',state='"+s15+"',country='"+s16+"',highschool='"+s17+"',intermediate='"+s18+"', graduate='"+s19+"',postgraduate='"+s20+"',occupation='"+s21+"',income='"+s22+"' where username='"+s3+"'";
out.println(23);*/
stmt.executeUpdate("UPDATE  `project`.`patient_reg` SET  `fname` =  '"+s1+"',`lname` =  '"+s2+"',`gender` =  '"+s4+"',`dob` =  '"+s5+"',`mrecord` =  '"+s6+"',password='"+s7+"',cpassword='"+s8+"',`officePh` =  '"+s9+"',`homePh` =  '"+s10+"',`mail` =  '"+s11+"',`address` =  '"+s12+"',`pin` =  '"+s13+"',`district` =  '"+s14+"',`state` =  '"+s15+"',`country` =  '"+s16+"',`highschool` =  '"+s17+"',`intermediate` =  '"+s18+"',`graduate` =  '"+s19+"',`postgraduate` =  '"+s20+"',`occupation` =  '"+s21+"',`income` =  '"+s22+"' WHERE  username='"+s3+"' ");
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
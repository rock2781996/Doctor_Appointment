<html>
<HEAD>
<%@include file="doc.jsp"%>
</HEAD>

	<%@page import="java.sql.*"%>
<%     
 String value=(String)session.getAttribute("username");

 String s0=value;
String s1=request.getParameter("d1");
		String s2=request.getParameter("d2");
		String s3=request.getParameter("d3");
		String s4=request.getParameter("d4");
		String s5=request.getParameter("d5");
		String s6=request.getParameter("d6");
		
		String s8=request.getParameter("d8");
        String s9=request.getParameter("d9");
		String s10=request.getParameter("d10");
		String s11=request.getParameter("d11");
		String s12=request.getParameter("d12");
		String s13=request.getParameter("d13");
		String s14=request.getParameter("d14");
		String s15=request.getParameter("d15");
		String s16=request.getParameter("d16");
		String s17=request.getParameter("d17");
		String s18=request.getParameter("d18");
		String s19=request.getParameter("d19");
		String s20=request.getParameter("d20");
		String s21=request.getParameter("d21");
		String s22=request.getParameter("d22");
		String s23=request.getParameter("d23");
		String s24=request.getParameter("d24");

		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		
			ResultSet rs;
			
stmt.executeUpdate("UPDATE  `project`.`doctor_reg` SET  `fname` =  '"+s1+"',`lname` =  '"+s2+"',`gender` =  '"+s4+"',`dob` =  '"+s5+"',`password` =  '"+s6+"',`phn_office` =  '"+s8+"',`phn_home` =  '"+s9+"',`email` =  '"+s10+"',`address` =  '"+s11+"',`pincode` =  '"+s12+"',`district` =  '"+s13+"',`state` =  '"+s14+"',`country` =  '"+s15+"',`graduate` =  '"+s18+"',`postgraduate` =  '"+s19+"',`experiance` =  '"+s20+"',`achievements` =  '"+s21+"',`specialization` =  '"+s22+"',`yog` =  '"+s23+"',`yopg` =  '"+s24+"' WHERE  `username`='"+s0+"' ");

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
<html>
<HEAD>
<TITLE>Patient Homepage</TITLE>	
</HEAD>
<body>
<%@include file="pat.jsp"%>
<%@page import="java.sql.*"%>
<%      String s1=request.getParameter("t1");
		String s2=request.getParameter("t2");
		String s3=request.getParameter("t3");
		String s4=request.getParameter("t4");
		String s5=request.getParameter("t5");
		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		
			ResultSet rs;
			//INSERT INTO `project`.`docinbox` (`name`, `subject`, `mail`, `attachment`, `date`) VALUES ('vijitgupta', 'fever', 'x,jhdagsdkjhfkjshadfkjcfcasdghkjs', 'sdhsaughcgf', '12-12-15');
			//stmt.executeUpdate("INSERT INTO `project`.`docinbox` (`mid`, `name`, `subject`, `mail`, `attachment`, `date`) VALUES (NULL, 'vijitgupta', 'dcfsf', 'def', '', 'dfd')");
			
			stmt.executeUpdate("insert into docinbox values(null,'"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
			
			
			

		}
		catch(Exception e)//checked exception is genreated
		{
			out.println("got an exceptionffffffffff!");
			out.println(e);
		}
  %>
  <h1 align=center>YOUR MAIL HAS BEEN SENT!!</h1>
  </body>
  </html>
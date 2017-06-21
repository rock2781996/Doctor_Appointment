<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> updated successfully </TITLE>
</HEAD>
<BODY>
<%@include file="pat.jsp"%>
<%@page import="java.sql.*, java.io.*;"%>
<% 
String z=(String)session.getAttribute("pid");
String s1=request.getParameter("t1");
String s2=request.getParameter("r");

String s3 = "";
int cut = 1;
char ch='0';
String sl="";
String st="";
String et="";
if(s2.length()==6)
{

	cut = 1;
	s3=s2.substring(0,4);

}
else if(s2.length()==7)

{
	cut = 2;
	 s3=s2.substring(0,5);

}
else

{
	cut = 3;
	 s3=s2.substring(0,6);

}
if(cut==1)
{    ch=s2.charAt(5);
 sl=s2.substring(0,1);
 st=s2.substring(1,2);
 et=s2.substring(3,4);
}
if(cut==2)
{	
	String n1[] = s2.split("_");
 if(n1[0].length()==3)
{	
	 ch=s2.charAt(6);
 sl=s2.substring(0,1);
 st=s2.substring(1,3);
 et=s2.substring(4,5);
}
else
	{
 ch=s2.charAt(6);
 sl=s2.substring(0,1);
 st=s2.substring(1,2);
 et=s2.substring(3,5);
	}
	
}
if(cut==3)
{    ch=s2.charAt(7);
 sl=s2.substring(0,1);
 st=s2.substring(1,3);
 et=s2.substring(4,6);
}

String time="";


String value="";
 String time1="";

String status="";
String value1="";
int m;
String slot1="";
try
		{
		 String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			
			 ResultSet rs; 
			 rs=stmt.executeQuery("select "+s3+" from appointment where date='"+s1+"'");
			while(rs.next())
			{
				value=rs.getString(s3);
			}
		
			
			rs=stmt.executeQuery("select * from patappon where date='"+s1+"' and pid='"+z+"' ");
while(rs.next())
			{
	time1=rs.getString("time");
			 	
					status=rs.getString("status");
			}
			
			 m=status.indexOf('p');

rs=stmt.executeQuery("select "+time1+" from appointment where date='"+s1+"'");

		while(rs.next())	{		
		

				value1=rs.getString(time1);
					
			}
			
			
 String b1=value1.substring(0,1);
			  String b2=value1.substring(1,2);
			   String b3=value1.substring(2,3);
			    String b4=value1.substring(3,4);
if(m==0)
			{
	b1="y";
	stmt.executeUpdate("update appointment set "+time1+"='"+b1+b2+b3+b4+"' where date='"+s1+"'");
			}
			if(m==1)
			{
	b2="y";
	stmt.executeUpdate("update appointment set "+time1+"='"+b1+b2+b3+b4+"' where date='"+s1+"'");
	}
			if(m==2)
			{
	b3="y";
	stmt.executeUpdate("update appointment set "+time1+"='"+b1+b2+b3+b4+"' where date='"+s1+"'");
			}
			if(m==3)
			{
	b4="y";
	stmt.executeUpdate("update appointment set "+time1+"='"+b1+b2+b3+b4+"' where date='"+s1+"'");
		}
	 String c1=value.substring(0,1);
			  String c2=value.substring(1,2);
			   String c3=value.substring(2,3);
			    String c4=value.substring(3,4);
if(ch=='1')
			{
            c1="s";
			
			stmt.executeUpdate("update appointment set "+s3+"='"+c1+c2+c3+c4+"' where date='"+s1+"'");
		    time=(st+":00-"+st+":15"+sl+"m");
			
				stmt.executeUpdate("UPDATE  `project`.`patappon` SET  `time` =  '"+s3+"',`status` =  'pxxx' WHERE  `patappon`.`pid` =  '"+z+"' AND `patappon`.`date` =  '"+s1+"' ");
			}
			if(ch=='2')
			{
				c2="s";
			
			stmt.executeUpdate("update appointment set "+s3+"='"+c1+c2+c3+c4+"' where date='"+s1+"'");
		    time=(st+":15-"+st+":30"+sl+"m");
	
		stmt.executeUpdate("UPDATE  `project`.`patappon` SET  `time` =  '"+s3+"',`status` =  'xpxx' WHERE  `patappon`.`pid` =  '"+z+"' AND `patappon`.`date` =  '"+s1+"' ");
			}
			if(ch=='3')
			{
				c3="s";
			
			stmt.executeUpdate("update appointment set "+s3+"='"+c1+c2+c3+c4+"' where date='"+s1+"'"); 
		    time=(st+":30-"+st+":45"+sl+"m");
				
				stmt.executeUpdate("UPDATE  `project`.`patappon` SET  `time` =  '"+s3+"',`status` =  'xxpx' WHERE  `patappon`.`pid` =  '"+z+"' AND `patappon`.`date` =  '"+s1+"' ");
			}
			if(ch=='4')
			{
				c4="s";
			
			stmt.executeUpdate("update appointment set "+s3+"='"+c1+c2+c3+c4+"' where date='"+s1+"'"); 
		    time=(st+":45-"+et+":00"+sl+"m");
				
				stmt.executeUpdate("UPDATE  `project`.`patappon` SET  `time` =  '"+s3+"',`status` =  'xxxp' WHERE  `patappon`.`pid` =  '"+z+"' AND `patappon`.`date` =  '"+s1+"' ");
			}	 
		}
	
		
catch (Exception e)
		{
          out.println("got an exception");
		  out.println(e);

		}

%>
<h2 align=center>YOUR APPOINTMENT HAS BEEN MODIFIED</H2>
<h2 align=center> YOUR APPOINTMENT HAS BEEN FIXED ON </h2>
<h3 align=center>Date=<%=s1%></h3> 
<h3 align=center>Time=<%=time%></h3>
</BODY>
</HTML>

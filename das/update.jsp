<HTML>
<HEAD>
<TITLE> update </TITLE>
</HEAD>
<BODY>
	<%@include file="doc.jsp"%>

<%@page import="java.sql.*"%>
<%		
String arr[]={"t1","a1_2_1","a1_2_2","a1_2_3","a1_2_4","a2_3_1","a2_3_2","a2_3_3","a2_3_4","a3_4_1","a3_4_2","a3_4_3","a3_4_4","a4_5_1","a4_5_2","a4_5_3","a4_5_4","a5_6_1","a5_6_2","a5_6_3","a5_6_4",
"a6_7_1","a6_7_2","a6_7_3","a6_7_4","a7_8_1","a7_8_2","a7_8_3","a7_8_4","a8_9_1","a8_9_2","a8_9_3","a8_9_4","a9_10_1","a9_10_2","a9_10_3","a9_10_4","a10_11_1","a10_11_2","a10_11_3","a10_11_4","a11_12_1","a11_12_2","a11_12_3","a11_12_4","p12_1_1","p12_1_2","p12_1_3","p12_1_4","p1_2_1","p1_2_2","p1_2_3","p1_2_4","p2_3_1","p2_3_2","p2_3_3","p2_3_4","p3_4_1","p3_4_2","p3_4_3","p3_4_4","p4_5_1","p4_5_2","p4_5_3","p4_5_4","p5_6_1","p5_6_2","p5_6_3","p5_6_4","p6_7_1","p6_7_2","p6_7_3","p6_7_4","p7_8_1","p7_8_2","p7_8_3","p7_8_4","p8_9_1","p8_9_2","p8_9_3","p8_9_4","p9_10_1","p9_10_2","p9_10_3","p9_10_4","p10_11_1","p10_11_2","p10_11_3","p10_11_4","p11_12_1","p11_12_2","p11_12_3","p11_12_4","p12_1_1","p12_1_2","p12_1_3","p12_1_4"};
String ar[]={"a1_2","a2_3","a3_4","a4_5","a5_6","a6_7","a7_8","a8_9","a9_10","a10_11","a11_12","p12_1","p1_2","p2_3","p3_4","p4_5","p5_6","p6_7","p7_8","p8_9","p9_10","p10_11","p11_12","a12_1"};
String s[]=new String[97];
int j=0;
String v = "update appointment set ";
String w="";
for(int i=0;i<97;i++)
{
s[i]=request.getParameter(arr[i]);
if(s[i]==null)
	{
s[i]="n";
}
}
for(int i=0;i<97;)
	{if(i>=1)
		{
	v+=ar[j];
	v+="='";
	v+= s[i]+s[i+1]+s[i+2]+s[i+3];
	v+="'";
	if(i<92)
	v+=",";
	i+=4;
	j=j+1;}
	else 
		i++;
	}
	v+=" where date='"+s[0]+"'";
	
//out.println(v);
try
		{
		 String url="jdbc:mysql://localhost:3306/project";
			Connection conn = DriverManager.getConnection(url,"root","");
			 Statement stmt=conn.createStatement();
			 ResultSet rs; 
			 stmt.executeUpdate(v);  	
		
		}
		
catch (Exception e)
		{
          out.println("got an exception");
		  out.println(e);

		}

		%>
		<h2 align=center>Sucessfully updated!! </h2>
</BODY>
</HTML>

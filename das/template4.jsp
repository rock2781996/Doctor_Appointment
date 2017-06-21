<html>
<head>
<title> template fillup </title>
</head>
<body>
<%@include file="doc.jsp"%>
<%@page import="java.sql.*;"%>
<%
int i,j,k,g,h,l,m,n,o;
String p="",q="",r="";
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("select");
String a=s1.substring(0,2);
String b=s1.substring(3,5);
String c=s1.substring(6,10);

String d=s2.substring(0,2);
String e=s2.substring(3,5);
String f=s2.substring(6,10);

g=Integer.parseInt(a);

h=Integer.parseInt(b);
l=Integer.parseInt(c);
m=Integer.parseInt(d);
n=Integer.parseInt(e);
o=Integer.parseInt(f);

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
			if(s3.equals("winter")){
			stmt.executeUpdate("insert into templateinsert values('"+s1+"-"+s2+"','"+s3+"','p3_4,p4_5')");
			for(k=l;k<=o;k++){
			for(j=g;j<=m;j++){
				for(i=h;i<=n;i++){
p=Integer.toString(i);
q=Integer.toString(j);
r=Integer.toString(k);
if(p.length()==1)
	p='0'+p;
if(q.length()==1)
	q='0'+q;

stmt.executeUpdate("insert into appointment values( '"+q+"-"+p+"-"+r+"','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','yyyy','yyyy','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn')");

			}}}}
		else	if(s3.equals("summer")){
			stmt.executeUpdate("insert into templateinsert values('"+s1+"-"+s2+"','"+s3+"','a10_11,a11_12')");
			for(k=l;k<=o;k++){
			for(j=g;j<=m;j++){
				for(i=h;i<=n;i++){
p=Integer.toString(i);
q=Integer.toString(j);
r=Integer.toString(k);
if(p.length()==1)
	p='0'+p;
if(q.length()==1)
	q='0'+q;

stmt.executeUpdate("insert into appointment values( '"+q+"-"+p+"-"+r+"','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','yyyy','yyyy','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn')");
			}}}}
		else	if(s3.equals("autumn")){
			stmt.executeUpdate("insert into templateinsert values('"+s1+"-"+s2+"','"+s3+"','p6_7,p7_8')");
for(k=l;k<=o;k++){
			for(j=g;j<=m;j++){
				for(i=h;i<=n;i++){
p=Integer.toString(i);
q=Integer.toString(j);
r=Integer.toString(k);

if(p.length()==1)
	p='0'+p;
if(q.length()==1)
	q='0'+q;

stmt.executeUpdate("insert into appointment values( '"+q+"-"+p+"-"+r+"','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','yyyy','yyyy','nnnn','nnnn','nnnn','nnnn','nnnn')");

			}}}}
			else{
			stmt.executeUpdate("insert into templateinsert values('"+s1+"-"+s2+"','"+s3+"','p1_2,p2_3')");
			for(k=l;k<=o;k++){
			for(j=g;j<=m;j++){
				for(i=h;i<=n;i++){
p=Integer.toString(i);
q=Integer.toString(j);
r=Integer.toString(k);
if(p.length()==1)
	p='0'+p;
if(q.length()==1)
	q='0'+q;

stmt.executeUpdate("insert into appointment values( '"+q+"-"+p+"-"+r+"','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','yyyy','yyyy','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn','nnnn')");
			}}}}
		
  
}
catch(Exception z)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(z);
		}%>
<h1 align=center>YOUR TIMING HAS BEEN SUCCESSFULLY ENTERED</h1>
<form align=center action="http://127.0.0.1:8080/das/dsearch.jsp">
<input type=submit value=update></form>
</body>
</html>
<%@ page import="java.sql.*,java.util.*,java.text.*;" %>



<%//Calendar calendar = Calendar.getInstance();
    //java.sql.Timestamp ourJavaTimestampObject = new java.sql.Timestamp(calendar.getTime().getTime());


/* java.util.Date date= new java.util.Date();
	 out.println(new Timestamp(date.getTime()));


 DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
       Date dateobj = new Date();
       out.println(df.format(dateobj));
*/
       /*getting current date time using calendar class 
        * An Alternative of above*/

		DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
      DateFormat df1 = new SimpleDateFormat("dd-MM-yy");

       Calendar calobj = Calendar.getInstance();
       out.println(df.format(calobj.getTime()));

	      
String s = df1.format(calobj.getTime());
       out.println("<br>="+s);

      // out.println(df.format(calobj.getTime()));



%>
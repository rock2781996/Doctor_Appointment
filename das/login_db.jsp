<%@ page import="java.sql.*;" %>
<%@ page session="false" %>
<%
String s1=request.getParameter("username");
String s2=request.getParameter("password");
 
boolean bi=false;
String username="",password="",type="",status="",pid="",did="";
				        try {

            String url = "jdbc:mysql://localhost:3306/project";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from login where username = '"+s1+"' and password='"+s2+"' ");
	    		    while ( rs.next() ) 
				{
						bi=true;
                 username = rs.getString("username");
				password = rs.getString("password");
				status = rs.getString("status");
				type = rs.getString("type");

			}



		if(bi)
							{
	if(status.equals("A"))
								{
		if(type.equals("P"))
									{
			      rs = stmt.executeQuery("select pid from patient_reg where username = '"+s1+"' and password='"+s2+"' ");
	    		    while ( rs.next() ) 
							{
						HttpSession session = request.getSession(true);

		 
            session.setMaxInactiveInterval(600);
			session.setAttribute("username", username);
				            session.setAttribute("user name", username);
                             pid = rs.getString("pid");
				 				 session.setAttribute("pid", pid);

							}

  RequestDispatcher dispatcher = request.getRequestDispatcher("/pathome.jsp?username="+username+"");

    dispatcher.forward(request, response);
									}
									else if(type.equals("D"))
																			{
										      rs = stmt.executeQuery("select did from doctor_reg where username = '"+s1+"' and password='"+s2+"' ");
	    		    while ( rs.next() ) 
							{
										bi=true;
		  HttpSession session = request.getSession(true);
session.setMaxInactiveInterval(600);
				            session.setAttribute("username",username);
                 did = rs.getString("did");
				 				            session.setAttribute("Doctor ID", did);

							}

  RequestDispatcher dispatcher = request.getRequestDispatcher("/dochome.jsp?username="+username+"");

    dispatcher.forward(request, response);
									}

								}
								else
									out.println("Your Registration has not been validated");
							}
						else
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login1.jsp");

    dispatcher.forward(request, response);
									}

            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }


%>

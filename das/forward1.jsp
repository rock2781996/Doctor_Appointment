<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>

<%@include file="doc.jsp"%>


<BODY>
<%


			
		   
String report=request.getParameter("report");
			String mrecord=request.getParameter("mrecord");
		
		
			
			if(report.equals("blood"))
	
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/docbloodsearch.jsp");

    dispatcher.forward(request, response);
	}

	else if(report.equals("urine"))
		{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/docurinesearch.jsp");

    dispatcher.forward(request, response);
		}
			else if(report.equals("renal"))
		{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/docrenalsearch.jsp");

    dispatcher.forward(request, response);
		}
			else 
		{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/doccardiacsearch.jsp");

    dispatcher.forward(request, response);
		}
		
%>
</body>
</html>
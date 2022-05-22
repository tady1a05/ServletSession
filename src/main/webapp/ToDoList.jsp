<%@page import="java.util.ArrayList"%>
<%@ page isELIgnored="false" %> 
<html>
	<h1>To Do List</h1>
	<form method="post" action="ToDoList.jsp">
		<label for="Task">Task:</label>
		<input type="text" name="Task"/>
		<input type="submit" value="submit"/>
	</form>
	<%ArrayList<String> items = (ArrayList<String>)session.getAttribute("items");
	if(items == null){
		session.setAttribute("items", new ArrayList<String>());
		items = (ArrayList<String>)session.getAttribute("items");
	}

	if(request.getParameter("Task") != null){
			items.add(request.getParameter("Task"));
	}
	%>
	<ol>
		<%
			for(int i=0 ; i<items.size();i++){
				out.println("<li>"+ items.get(i) +"</li>");
			}
		%>
	</ol>
</html>
<%@page import="lesson07.xml.json.Group"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>JSP Page</title>
</head>
<body>
	<h1>Hello from Ukraine!</h1>
	<FORM METHOD="GET" action="/CourceTomcat/jsp">
		Please enter groupId: <BR>
		<TEXTAREA NAME="groupId" ROWS="1"></TEXTAREA>
		<BR> <INPUT TYPE="SUBMIT" VALUE="Submit">
	</FORM>

	<%
	Group group = (Group) request.getAttribute("model");
	if (group != null) {
	%>
	<h3>You have selected group:</h3>
	<h5>
		Id=<%=group.getId()%></h5>
	<table border="2">
		<tr>
			<th>Student</th>
			<th>Year of born</th>
		</tr>
		<c:forEach items="<%=group.getStudents()%>" var="student"
			varStatus="status">
			<tr>
				<td>${student.name}</td>
				<td>${student.yearOfBorn}</td>
			</tr>
		</c:forEach>
	</table>
	<h5>room on ${model.room.street} street, in ${model.room.city}</h5>
	<ul>
		<li><%=group.getHumanResources()%></li>
	</ul>
	<%=group%>
	<%
	}
	%>
</body>
</html>




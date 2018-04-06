<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Restful Client Error Page</title>
	</head>
	<body>
		<div align = "center">
			<h2><font color="red">${ErrorMessage}</font></h2><br/>
			<a href="${pageContext.request.contextPath}/Jsps/Home.jsp">Home Page</a>
		</div>
	</body>
</html>
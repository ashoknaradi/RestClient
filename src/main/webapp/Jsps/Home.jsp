<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Restful Client Home Page</title>
	</head>
	<body>
		<div align = "center">
			<form action="${pageContext.request.contextPath}/getTrackDetails">
				<input type="submit" value="Get Track Details Here"/>
			</form></br>
			<form action="${pageContext.request.contextPath}/registerTrackButton">
				<input type="submit" value="Register Track Here"/>
			</form>
		</div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Restful Client Register Track Page</title>
	</head>
	<body>
		<h1><font color="red">${trackStatus}</font></h1>
		<form action="${pageContext.request.contextPath}/registerTrackDetails" method="post">
		<table>
			<tr><td>Track Album : </td><td><input type="text" name="trackAlbum"/></td></tr>
			<tr><td>Track Title : </td><td><input type="text" name="trackTitle"/></td></tr>
			<tr><td>Track Singer : </td><td><input type="text" name="trackSinger"/></td></tr>
		</table>
		<input type="submit" value="Register"/>
		<a href="${pageContext.request.contextPath}/Jsps/Home.jsp">Home Page</a>
		</form>
	</body>
</html>
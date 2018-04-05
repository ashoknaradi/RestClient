<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>RestfulClient-TrackDetailsPage</title>
	</head>
	<body>
		<tabe>
			<h3><font color="Blue">Track Album ::: ${trackDetails.trackAlbum}</font></h3>
			<h4><font color="green">Track Title ::: ${trackDetails.trackTitle}</font></h4>
			<h4><font color="green">Track Singer ::: ${trackDetails.trackSinger}</font></h4>
			<h4><font color="red">Track Status ::: ${trackDetails.trackStatus}</font></h4>
		</table>
		<a href="${pageContext.request.contextPath}/Jsps/Home.jsp" >Home Page</a>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% UserVO user = (UserVO)session.getAttribute("user"); 
	%>
	<p>ID : <%= user.getId() %><br>Name : <%= user.getName() %><br>Nickname : <%= user.getNickname()%></p>
</body>
</html>
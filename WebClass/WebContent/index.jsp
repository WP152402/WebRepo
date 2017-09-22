<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%> <!-- 지시자 태그 -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>첫번째 JSP</title>
</head>
<body>
	<%-- 2. Comment tag (JSP 주석) --%>
	<%-- Declaration tag (선언부) --%>
	<%! private static final String DEFAULT_NAME = "Guest"; %>
	<%-- 4.Scriptlet tag (스크립틀릿) --%>
	<%
	//우리가 아는 코드 그대로 작성 가능(Java 주석)
	String name = request.getParameter("name");
	//if(name == null){
	//	name = DEFAULT_NAME;
	//}
	
	%>
	<%-- 5.Expression tag (표현식) --%>
	<h1>Hello, <%= name.toUpperCase() %> </h1>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%> <!-- ������ �±� -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ù��° JSP</title>
</head>
<body>
	<%-- 2. Comment tag (JSP �ּ�) --%>
	<%-- Declaration tag (�����) --%>
	<%! private static final String DEFAULT_NAME = "Guest"; %>
	<%-- 4.Scriptlet tag (��ũ��Ʋ��) --%>
	<%
	//�츮�� �ƴ� �ڵ� �״�� �ۼ� ����(Java �ּ�)
	String name = request.getParameter("name");
	//if(name == null){
	//	name = DEFAULT_NAME;
	//}
	
	%>
	<%-- 5.Expression tag (ǥ����) --%>
	<h1>Hello, <%= name.toUpperCase() %> </h1>
</body>
</html>
<!-- page directive : JSP 페이지를 구성하는 요소라고 할 수 있다.  -->
<!-- page language="java" : 이 페이지의 언어는 자바로 쓰겠다. 스크립트 요소안에 들어간다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR" import="java.util.Date" errorPage="Error.jsp" isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 나 화면에 보여지니? 만약에 위에 errorPage, isErrorPage를 지우면
 화면에 보이진 않지만 이 내용들은 버퍼에 저장 될거야.	
 
<%

	int sum = 10 / 0; // 에러 코드를 작성

%>

</body>
</html>
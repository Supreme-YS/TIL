<!-- page directive : JSP �������� �����ϴ� ��Ҷ�� �� �� �ִ�.  -->
<!-- page language="java" : �� �������� ���� �ڹٷ� ���ڴ�. ��ũ��Ʈ ��Ҿȿ� ����.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR" import="java.util.Date" errorPage="Error.jsp" isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 �� ȭ�鿡 ��������? ���࿡ ���� errorPage, isErrorPage�� �����
 ȭ�鿡 ������ ������ �� ������� ���ۿ� ���� �ɰž�.	
 
<%

	int sum = 10 / 0; // ���� �ڵ带 �ۼ�

%>

</body>
</html>
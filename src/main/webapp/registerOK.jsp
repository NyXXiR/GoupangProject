<%@page import="model.*"%>
<%@page import="DAO.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	LoginRegisterDao dao = LoginRegisterDao.getInstance();
	
	String num;
	String userID = request.getParameter("userID");
	String userName = request.getParameter("userName");
	String userPassword = request.getParameter("userPassword");

	if (userID != "" && userName != "" && userPassword != "") {
		buyerVO userVO = new buyerVO(num, userID, userName, userPassword);
		dao.registerBuyer(userVO);
	%>
		<script>
				alert("<%=userName%>�� ���� �Ϸ� �Ǿ����ϴ�.");
				window.location.href = 'header.jsp';
		</script>
	<%
	} else {
	%>
		<script>
			alert("��� �׸��� �Է� �� �ּ���");
			window.location.href = 'register.jsp';
		</script>
	<%
	}
	%>

</body>
</html>
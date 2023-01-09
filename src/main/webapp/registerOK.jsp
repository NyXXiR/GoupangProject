<%@page import="jdbc.*"%>
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
	Dao dao = Dao.getInstance();

	String userID = request.getParameter("userID");
	String userName = request.getParameter("userName");
	String userPassword = request.getParameter("userPassword");

	if (userID != "" && userName != "" && userPassword != "") {
		UserVO userVO = new UserVO(userID, userName, userPassword);
		dao.insertEmpTemp(userVO);
	%>
		<script>
				alert("<%=userName%>님 가입 완료 되었습니다.");
				window.location.href = 'header.jsp';
		</script>
	<%
	} else {
	%>
		<script>
			alert("모든 항목을 입력 해 주세요");
			window.location.href = 'register.jsp';
		</script>
	<%
	}
	%>

</body>
</html>
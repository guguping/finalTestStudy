<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<h2>hello servlet!!</h2>
	<a href="hello.jsp">hello.jsp로 이동</a>
	<!-- param1.jsp에 get방식으로 p1="안녕" p2="반가워" 를 보내봅시다. -->
	<a href="param1.jsp?p1=안녕&p2=반가워"">param1.jsp로 이동</a>
	
	<!-- form태그를 이용하여 이름(name), 나이(age)를 각각 입력 받아서
		post 방식으로 param2.jsp로 전송하고 param2.jsp에서 입력값을 출력해 봅시다. -->
	<form method="post" action = "param2.jsp">
	<label for="name">이름</label>
	<input type="text" id="name" name="name"><br>
	<label for="age">나이</label>
	<input type="text" id="age" name="age"><br>
	<label for="mobile">전화번호</label>
	<input type="text" id="mobile" name="mobile"><br>
	<button type="submit">전송</button>
	</form>
	<br>
	
	<a href="select.jsp">조회하기</a>
</body>
</html>
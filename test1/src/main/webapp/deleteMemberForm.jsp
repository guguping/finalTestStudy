<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<style>
	table, tr, th {
		border: 1px solid black;
		text-align: center;
		box-sizing: border-box;
	}
	input {
		border: none;
		outline: none;
	}
	select {
		border: none;
		outline: none;
		width: 100%;
		height: 100%;
	}
</style>
</head>
<body>
<h2>사원 퇴사처리</h2>
<form action="deleteMember.jsp">
	<table>
		<tr>
			<th><label for="name">성명: </label></th>
			<th><input type="text" id="name" name="name"></th>
		</tr>
    	<tr>
			<th><label for="id">사원번호: </label></th>
			<th><input type="text" id="id" name="id"></th>
		</tr>
		<tr>
    		<td colspan = "2"><button type="submit">삭제</button>
    		<button type="button" onclick="index()">취소</button></td>
    	</tr>
    </table>
</form>
</body>
<script>
	const index = () => {
		location.href = "index.jsp";
	}
</script>
</html>
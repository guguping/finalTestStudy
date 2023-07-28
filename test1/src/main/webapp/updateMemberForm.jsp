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
    <h2>인사관리 사원정보 변경</h2>
    <form action="updateMember.jsp">
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
			<th><label for="dept">소속부서: </label></th>
			<th><select name="dept">
					<option value="인사부">인사부</option>
					<option value="기획부">기획부</option>
					<option value="홍보부">홍보부</option>
					<option value="영업부">영업부</option>
					<option value="경리부">경리부</option>
				</select></th>
		</tr>
		<tr>
			<th><label for="position">직급: </label></th>
			<th><select name="position">
					<option value="1">1급</option>
					<option value="2">2급</option>
					<option value="3">3급</option>
					<option value="4">4급</option>					
				</select></th>
		</tr>
		<tr>
			<th><label for="duty">직책: </label></th>
			<th><input type="text" id="duty" name="duty"></th>
		</tr>
		<tr>
			<th><label for="phone">연락처: </label></th>
			<th><input type="text" id="phone" name="phone"></th>
		</tr>
		<tr>
        	<td colspan = "2">
        	<button type="submit">변경</button>
        	<button type="button" onclick="location.href='index.jsp'">취소</button>
        	</td>
        </tr>
        </table>
    </form>

</body>
</html>
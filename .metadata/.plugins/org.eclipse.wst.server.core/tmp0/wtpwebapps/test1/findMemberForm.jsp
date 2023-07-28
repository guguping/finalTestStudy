a<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td, th {
		border: 1px solid black;
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
	<h2>인사관리 조회화면</h2>
	<form action="index.jsp" method="get">
		<table>
			<tr>
				<td>
				<input type="radio" id="searchType" value="id" name="searchType">
					사원번호로 조회:
				</td>
				<th>
					<input type="text" name="idValue">
				</th>
			</tr>
			<tr>
				<td>
				<input type="radio" value="dept" name="searchType">	
					소속부서:
				</td>
				<th>
					<select name="deptValue">
						<option value="인사부">인사부</option>
						<option value="기획부">기획부</option>
						<option value="홍보부">홍보부</option>
						<option value="영업부">영업부</option>
						<option value="경리부">경리부</option>
					</select>
				</th>
			</tr>
			<tr>
				<td colspan="2" style = "border: unset;text-align: center;">
					<button type="submit">조회</button>
					<button type="button" onclick="index()">취소</button>
				</td>
			</tr>
		</table>
	</form>
</body>
<script>
	const index =()=>{
		location.href = "index.jsp";
	}
</script>
</html>
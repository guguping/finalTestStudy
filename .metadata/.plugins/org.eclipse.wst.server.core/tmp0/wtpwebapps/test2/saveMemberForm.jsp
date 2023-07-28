<%@page import="com.test.test2.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        * {
            padding: 0;
            margin: 0;
        }
        
        #contents {
			height: 80%;       
            background-color: burlywood;
            padding: 20px;
        }
        
        table, tr, th, td {
        	border: 1px solid black;
        }
        
        input {
        	outline: none;
        }
</style>
</head>
<%
	MemberDAO memberDAO = new MemberDAO();
	int custno = memberDAO.getCustNo();
%>
<body>
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>

<div id="contents">
<h2>홈쇼핑 회원 등록</h2>
	<form action="saveMember.jsp" method="post">
		<table>
			<tr>
				<th><label for="custno">회원번호(자동발생)</label></th>			
				<th><input type="text" id="custno" name="custno" readonly="readonly" value ="<%=custno %>"></th>
			</tr>
			<tr>
				<th><label for="custname">회원성명</label></th>
				<th><input type="text" id="custname" name="custname"></th>
			</tr>
			<tr>
				<th><label for="phone">회원전화</label></th>
				<th><input type="text" id="phone" name="phone"></th>
			</tr>
			<tr>
				<th><label for="address">회원주소</label></th>
				<th><input type="text" id="address" name="address"></th>
			</tr>
			<tr>
				<th><label for="joindate">가입일자</label></th>
				<th><input type="text" id="joindate" name="joindate"></th>
			</tr>
			<tr>
				<th><label>고객등급[A:VIP,B:일반,C:직원]</label></th>
				<th><input type="text" id="grade" name="grade"></th>
			</tr>
			<tr>
				<th><label for="city">도시코드</label></th>
				<th><input type="text" id="city" name="city"></th>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">등록</button>
					<button type="button" onclick="location.href='index.jsp'">취소</button>
				</td>
			</tr>
		</table>
	</form>
</div>

<%@include file="footer.jsp"%>
</body>
<script>

	const custname = 

</script>
</html>
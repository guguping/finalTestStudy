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
            text-align:center;
            padding: 20px;
    	}
        
        table, tr, th, td {
        	border: 1px solid black;
        }
        
        input {
        	outline: none;
        	border: none;
        	height: 25px;
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
	<form action="saveMember.jsp" method="post" name="saveForm">
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
				<th colspan="2">
					<button type="button" onclick="saveCheck()">등록</button>
					<button type="button" onclick="location.href='index.jsp'">취소</button>
				</th>
			</tr>
		</table>
	</form>
</div>

<%@include file="footer.jsp"%>
</body>
<script>
    function saveCheck() {
        if (document.saveForm.custname.value == "") {
            alert("이름을 입력해주세요");
            document.saveForm.custname.focus();
            return false;
        } else if (document.saveForm.phone.value == "") {
            alert("전화번호를 입력해주세요");
            document.saveForm.phone.focus();
            return false;
        } else if (document.saveForm.address.value == "") {
            alert("주소를 입력해주세요");
            document.saveForm.address.focus();
            return false;
        } else if (document.saveForm.joindate.value == "") {
            alert("가입일자를 입력해주세요");
            document.saveForm.joindate.focus();
            return false;
        } else if (document.saveForm.grade.value == "") {
            alert("고객등급을 입력해주세요");
            document.saveForm.grade.focus();
            return false;
        } else if (document.saveForm.city.value == "") {
            alert("도시코드를 입력해주세요");
            document.saveForm.city.focus();
            return false;
        }
        alert("회원등록이 완료되었습니다.");
        document.saveForm.submit();
    }
</script>
</html>
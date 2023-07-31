<%@page import="com.test.test2.dto.MemberDTO"%>
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
        	border: none;
        	height: 25px;
        }
    </style>
</head>
<body>
<%
    MemberDAO memberDAO = new MemberDAO();
    String custno = request.getParameter("custno");
    MemberDTO memberDTO = memberDAO.findById(custno);
%>
<%@include file="header.jsp" %>
<%@include file="nav.jsp" %>
<div id="contents">
    <form action="updateMember.jsp" name="updateForm">
    <table>
	    <tr>
	    	<th>
	    		회원번호: 
	    	</th>
		    <th>
		    	<input type="text" name="custno" value="<%=memberDTO.getCustno()%>" readonly="readonly">
		    </th>
	    </tr>
        <tr>
        	<th>
        	회원성명: 
        	</th>
	        <th>
	        <input type="text" name="custname" value="<%=memberDTO.getCustname()%>">
	        </th>
        </tr>
        <tr>
        	<th>
        	회원전화: 
        	</th>
	        <th>
	        <input type="text" name="phone" value="<%=memberDTO.getPhone()%>">
	        </th>
        </tr>
        <tr>
        	<th>
        	회원주소: 
        	</th>
	        <th>
			<input type="text" name="address" value="<%=memberDTO.getAddress()%>">
	        </th>
        </tr>
        <tr>
        	<th>
        	가입일자: 
        	</th>
	        <th>
	        <input type="text" name="joindate" value="<%=memberDTO.getJoindate()%>">
	        </th>
        </tr>
        <tr>
        	<th>
        	고객등급(A:VIP, B:일반, C:직원): 
        	</th>
	        <th>
	        <input type="text" name="grade" value="<%=memberDTO.getGrade()%>">
	        </th>
        </tr>
        <tr>
        	<th>
        	도시코드: 
        	</th>
	        <th>
	        <input type="text" name="city" value="<%=memberDTO.getCity()%>">
	        </th>
        </tr>
        <tr>
	        <th colspan = "2">
		        <button type="button" onclick="saveCheck()">수정</button>
		        <button type="button" onclick="location.href='findMember.jsp'">조회</button>
	        </th>
        </tr>
    </table>
    </form>
</div>
<%@include file="footer.jsp"%>	
</body>
<script>
    function saveCheck() {
        if (document.updateForm.custname.value == "") {
            alert("이름을 입력해주세요");
            document.updateForm.custname.focus();
            return false;
        } else if (document.updateForm.phone.value == "") {
            alert("전화번호를 입력해주세요");
            document.updateForm.phone.focus();
            return false;
        } else if (document.updateForm.address.value == "") {
            alert("주소를 입력해주세요");
            document.updateForm.address.focus();
            return false;
        } else if (document.updateForm.joindate.value == "") {
            alert("가입일자를 입력해주세요");
            document.updateForm.joindate.focus();
            return false;
        } else if (document.updateForm.grade.value == "") {
            alert("고객등급을 입력해주세요");
            document.updateForm.grade.focus();
            return false;
        } else if (document.updateForm.city.value == "") {
            alert("도시코드를 입력해주세요");
            document.updateForm.city.focus();
            return false;
        }
        alert("회원정보수정이 완료되었습니다.");
        document.updateForm.submit();
    }
</script>
</html>
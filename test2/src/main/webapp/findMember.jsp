<%@page import="com.test.test2.dto.MemberDTO"%>
<%@page import="java.util.List"%>
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
        table {
            margin-left: auto;
            margin-right: auto;
        }
        table, tr, th, td {
            border: 1px black solid;
            padding: 5px;
            text-align: center;
        }
        a {
			text-decoration: none;
			color: white;
        }
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<%@include file="nav.jsp" %>
<div id="contents">
    <table>
        <tr>
            <th>회원번호</th>
            <th>회원성명</th>
            <th>전화번호</th>
            <th>주소</th>
            <th>가입일자</th>
            <th>고객등급</th>
            <th>거주지역</th>
        </tr>
        <%
            MemberDAO memberDAO = new MemberDAO();
            List<MemberDTO> findAll = memberDAO.findAll();
            for (MemberDTO memberDTO : findAll) {
        %>
        <tr>
            <td><a href="updateMemberForm.jsp?custno=<%=memberDTO.getCustno()%>"><%=memberDTO.getCustno()%></a></td>
            <td><%=memberDTO.getCustname()%></td>
            <td><%=memberDTO.getPhone()%></td>
            <td><%=memberDTO.getAddress()%></td>
            <td><%=memberDTO.getJoindate()%></td>
            <td><%=memberDTO.getGrade()%></td>
            <td><%=memberDTO.getCity()%></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
<%@page import="com.test.test2.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String custno = request.getParameter("custno");
    String custname = request.getParameter("custname");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String joindate = request.getParameter("joindate");
    String grade = request.getParameter("grade");
    String city = request.getParameter("city");

    MemberDAO memberDAO = new MemberDAO();
    int result = memberDAO.updateMember(custno, custname, phone, address, joindate, grade, city);
%>
</body>
<script>
    location.href = "findMember.jsp";
</script>
</html>
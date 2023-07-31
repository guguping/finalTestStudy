<%@page import="com.test.test2.dao.SalesDTO"%>
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
  </style>
</head>
<body>
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>

<div id="contents">
  <h2>회원매출조회</h2>
  <table>
    <tr>
      <th>회원번호</th>
      <th>회원성명</th>
      <th>등급</th>
      <th>매출액</th>
    </tr>
    <%
      MemberDAO memberDAO = new MemberDAO();
      List<SalesDTO> salesList = memberDAO.salesList();
      for (SalesDTO salesDTO : salesList) {
    %>
    <tr>
      <td><%=salesDTO.getCustno()%></td>
      <td><%=salesDTO.getCustname()%></td>
      <td><%=salesDTO.getGrade()%></td>
      <td><%=salesDTO.getSalesAmount()%></td>
    </tr>
    <%
      }
    %>
  </table>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
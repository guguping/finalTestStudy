<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	#nav{
		height:5vh;
		background-color: mediumpurple;	
	}
	#nav a {
		line-height: 45px;
		margin-left:20px;
		text-decoration: none;
		color: white;	
	}
	#nav a:hover {
		color: yellow;	
	}
</style>
<div id="nav">
	<a href="memberList.jsp">후보조회</a>
    <a href="voteForm.jsp">투표하기</a>
    <a href="voteList.jsp">투표검수조회</a>
    <a href="voteRanking.jsp">후보자등수</a>
    <a href="index.jsp">홈으로</a>
</div>
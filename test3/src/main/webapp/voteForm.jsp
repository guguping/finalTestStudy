<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }
        #contents {
			height: 80vh;
			background-color: burlywood;
			text-align: center;
		}
		table {
            margin-left: auto;
            margin-right: auto;
        }
        table, tr, th, td {
            border: 1px black solid;
            text-align: center;
            box-sizing: border-box;
        }
        input[type=text] {
			width: 98%;
			height: 20px;        
        }
         select {
         	width: 99%;
			height: 25px;
         }
        
    </style>
</head>
<body>
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>

<div id="contents">
	<h2>투표하기</h2>
    <form action="vote.jsp" name="voteForm">
    	<table>
    		<tr>
    			<th>주민번호: </th>
    			<th><input type="text" name="v_jumin"> 예 : 8906153154726<br></th>
    		</tr>
    		<tr>
    			<th>성명: </th>
    			<th><input type="text" name="v_name"></th>
    		</tr>
    		<tr>
    			<th>후보번호: </th>
    			<th><select name="m_no">
	                    <option></option>
	                    <option value="1">[1]김후보</option>
	                    <option value="2">[2]이후보</option>
	                    <option value="3">[3]박후보</option>
	                    <option value="4">[4]조후보</option>
	                    <option value="5">[5]최후보</option>
	                </select>
	            </th>
    		</tr>
    		<tr>
    			<th>투표시간: </th>
    			<th><input type="text" name="v_time"></th>
    		</tr>
    		<tr>
    			<th>투표장소: </th>
    			<th><input type="text" name="v_area"></th>
    		</tr>
    		<tr>
    			<th>유권자확인: </th>
    			<th><input type="radio" name="v_confirm" value="Y"> 확인 <input type="radio" name="v_confirm" value="N"> 미확인<br></th>
    		</tr>
    		<tr>
    			<th colspan ="2">
    				<button type="button" onclick="voteCheck()">투표하기</button>
	        		<button type="button" onclick="formReset()">다시하기</button>
    			</th>
    		</tr>
        </table>
    </form>
</div>

<%@include file="footer.jsp"%>
</body>
<script>
    function formReset() {
        alert("정보를 지우고 처음부터 다시 입력합니다!");
        document.voteForm.reset();
    }
    function voteCheck() {
        if (document.voteForm.v_jumin.value == "") {
            alert("주민번호가 입력되지 않았습니다!");
            document.voteForm.v_jumin.focus();
            return false;
        } else if (document.voteForm.v_name.value == "") {
            alert("성명이 입력되지 않았습니다!");
            document.voteForm.v_name.focus();
            return false;
        } else if (document.voteForm.m_no.value == "") {
            alert("후보번호가 선택되지 않았습니다!");
            document.voteForm.m_no.focus();
            return false;
        } else if (document.voteForm.v_time.value == "") {
            alert("투표시간이 입력되지 않았습니다!");
            document.voteForm.v_time.focus();
            return false;
        } else if (document.voteForm.v_area.value == "") {
            alert("투표장소가 입력되지 않았습니다!");
            document.voteForm.v_area.focus();
            return false;
        } else if (document.voteForm.v_confirm.value == "") {
            alert("유권자확인이 선택되지 않았습니다!");
            document.voteForm.v_confirm.focus();
            return false;
        }

        document.voteForm.submit();
    }
</script>
</html>
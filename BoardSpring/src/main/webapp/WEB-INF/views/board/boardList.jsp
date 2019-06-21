<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' type='text/css' href='../resources/css/board.css'>
<title>Insert title here</title>
</head>
<body>
<button id="regbtn">글 작성</button>
<div id='tablebox'>
	<div id='table'>
	
	<p>SPRING BOARD</p>
	<table class="board" border='1' cellspacing='0' >
		<caption>게시판 리스트</caption>
		<colgroup>
		<col width='30'>
		<col width='80'>
		<col width='30'>
		<col width='30'>
		<col width='30'>
		</colgroup>
		<thead>
		<tr>
		<th scope='col'>글번호</th>
		<th scope='col'>제목</th>
		<th scope='col'>작성자</th>
		<th scope='col'>조회수</th>
		<th scope='col'>작성일</th>
		</tr>
		</thead>
		<tbody>
		<tr>
				<td class='bno'>0</a></td>
				<td class='title'><a href="#">test</td>
				<td class='writer'>test</td>
				<td class='views'>0</td>
				<td class='rdate'>0000-00-00</td>
			</tr>
		<c:forEach items="${blist}" var="board">
			<tr>
				<td class='bno'>${board.bno}</td>
				<td class='title'><a href="#">${board.title}</td>
				<td class='writer'>${board.writer}</td>
				<td class='views'>${board.views}</td>
				<td class='rdate'>${board.rdate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
</body>
</html>
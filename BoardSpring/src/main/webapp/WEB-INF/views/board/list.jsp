<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<link rel='stylesheet' type='text/css' href='../resources/css/board.css'>
<link rel='stylesheet' type='text/css' href='../resources/css/main.css'>
<script>
	$(document).ready(function() {
		$("#regbtn").click(function() {
			location.href = "/board/reg.do";
		});
	});
</script>

<div id='tablebox'>
	<div id='table'>
	<div id=content>
		<p>SPRING BOARD</p>
		<button id="regbtn">글 작성</button>
		<table class="board" border='1' cellspacing='0'>
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
				<c:forEach items="${blist}" var="board">
					<tr>
						<td class='bno'>${board.bno}</td>
						<td class='title'><a href="./get.do?bno=${board.bno}">${board.title}</a></td>
						<td class='writer'>${board.writer}</td>
						<td class='views'>${board.views}</td>
						<td class='rdate'>${board.rdate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>
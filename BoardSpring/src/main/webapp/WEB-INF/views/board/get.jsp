<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<link rel='stylesheet' type='text/css' href='../resources/css/main.css'>
<link rel='stylesheet' type='text/css' href='../resources/css/reg.css'>

<div id='tablebox'>
	<div id='table'>
		<div id=content>
			<p>BOARD CONTENT</p>
			<input type="hidden" id="bno" value="${board.bno}" />
			<table class="reply" border='1'>
				<colgroup>
					<col width='20'>
					<col width='110'>
					<col width='20'>
					<col width='20'>
				</colgroup>
				<thead>
					<caption>CONTENT</caption>
				</thead>
				<tbody>
					<tr>
						<th>제목</th>
						<td>${board.title}</td>
						<th>작성일</th>
						<td>${board.rdate}</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${board.writer}</td>
						<th>조회수</th>
						<td>${board.views}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3" height="200px">${board.content}</textarea></td>
					</tr>
					<tr>
						<td colspan="4">
							<button id="update">UPDATE</button>
							<button id="list">LIST</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {

		$("#list").click(function() {
			location.replace("/board/list.do");
		});
		$("#update").click(function() {
			var bno = $("#bno").val();
			var url = "/board/modify.do?bno=" + bno;
			$(location).attr("href", url);
		});
	});
</script>
					<%@ include file="../includes/footer.jsp"%>
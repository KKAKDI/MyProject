<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<link rel='stylesheet' type='text/css' href='../resources/css/main.css'>
<link rel='stylesheet' type='text/css' href='../resources/css/board.css'>
<div id='tablebox'>
	<div id='table'>
		<div id=content>
			<p>BOARD INPUT</p>
			<table class="board" border='1'>
				<colgroup>
					<col width='20'>
					<col width='110'>
				</colgroup>
				<thead>
				<caption>BOARD INPUT</caption>
				</thead>
				<tbody>
					<form action="/reg.do" method="post">
						<tr>
							<th>제목</th>
							<td><input type="text" placeholder="제목을 입력하세요. "
								name="title" /></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><input type="text" name="writer" value="test" disabled /></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea cols="110" placeholder="내용을 입력하세요. "
									name="detail"></textarea></td>
						</tr>
						<tr>
							<td colspan="2"><input type="button" value="SUBMIT" /> <input
								type="button" value="RESET" /> <input type="button"
								value="LIST" /></td>
						</tr>
					</form>
				</tbody>
			</table>
			<table class="board" border='1'>
				<thead>
					<tr>
						<th>댓글 목록</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${rlist eq null}">
						<c:out>
							<tr>
								<td>
									<p>등록된 댓글이 없습니다.</p>
								</td>
							</tr>
						</c:out>
					</c:if>
					<c:forEach items="${rlist}" var="reply">
						<tr>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>

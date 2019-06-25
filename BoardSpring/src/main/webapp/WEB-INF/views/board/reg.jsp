<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<link rel='stylesheet' type='text/css' href='../resources/css/main.css'>
<link rel='stylesheet' type='text/css' href='../resources/css/reg.css'>
<div id='tablebox'>
	<div id='table'>
		<div id=content>
			<p>BOARD INPUT</p>
			<table class="reply" border='1'>
				<colgroup>
					<col width='20'>
					<col width='110'>
				</colgroup>
				<thead>
				<caption>BOARD INPUT</caption>
				</thead>
				<tbody>
					<form id="form" action="./reg.do" method="post">
						<tr>
							<th>제목</th>
							<td><input type="text"
								name="title" /></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><input type="text" name="writer"/></td>
						</tr> 
						<tr>
							<th>내용</th>
							<td height="200px"><textarea height="200px" name="content"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">
							<input type="submit" data-oper='submit' value="SUBMIT" /> 
							<input type="reset" data-oper='reset' value="RESET" /> 
							<button id="list">LIST</button>
							</td>
						</tr>
					</form>
				</tbody>
			</table>
			<table class="reply" border='1'>
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
<script type="text/javascript">		
	$(document).ready(function(){
		$("#list").click(function(){
			location.replace("/board/list.do");
		});
	});
</script>
<%@ include file="../includes/footer.jsp"%>

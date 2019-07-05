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
							<button data-oper="update" id="update">UPDATE</button>
							<button data-oper="list" id="list">LIST</button>
							<button data-oper="del" id="del">DELETE</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<form id="operForm" action="/board/modify.do" method="get">
	<input type='hidden' id='bno' name='bno' value='${board.bno}'/>
	<input type='hidden' id='pageNum' name='pageNum' value='${pg.pageNum}'/>
	<input type='hidden' id='amount' name='amount' value='${pg.amount}'/>
</form>
<script>
	$(document).ready(function() {
		var bno = $("#bno").val();
		var formObj = $("form");
		
		$('button').on("click",function(e){
			e.preventDefault();
			var operation = $(this).data("oper");
			if(operation==='list'){
				formObj.attr("action","/board/list.do").attr("method","get");
				var pageNum = $("input[name='pageNum']").clone();
				var amount = $("input[name='amount']").clone();
				console.log(pageNum);
				console.log(amount);
				formObj.empty();
				formObj.append(pageNum);
				formObj.append(amount);
			}else if(operation==='update'){
				formObj.attr("action","/board/modify.do");
				//var url = "/board/modify.do?bno=" + bno;
				//$(location).attr("href", url);
			}else if(operation==='del'){
				formObj.attr("action","/board/del.do");
				//var url = "/board/del.do?bno=" + bno;
				//$(location).attr("href", url);
			}
			formObj.submit();
		});				
	});
</script>
<%@ include file="../includes/footer.jsp"%>
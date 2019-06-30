<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<link rel='stylesheet' type='text/css' href='../resources/css/board.css'>
<link rel='stylesheet' type='text/css' href='../resources/css/main.css'>
<script>
	$(document).ready(
			function() {
				var result = '<c:out value="${result}"/>';

				checkModal(result);

				function checkModal(result) {
					if (result === '') {
						return;
					}
					if (parseInt(result) > 0) {
						$(".modal-body").html(
								"게시글 " + parseInt(result) + " 번 글이 등록되었습니다.");
					}
					$("#myModal").show();
				}
				$(".close").click(function(){
					$("#myModal").css("display","none");
				});

				$("#regbtn").click(function() {
					location.href = "/board/reg.do";
				});
				
				var modal = document.getElementById('myModal');
				window.onclick = function(event) {
		            if (event.target == modal) {
		                modal.style.display = "none";
		            }
		        }
				var actionForm = $("#actionForm");
				
				$(".pagination_button").click(function(e){
					e.preventDefault();
					console.log(this.href);
					console.log($(this).href);					
					actionForm.find("input[name='pageNum']").val(this.href);
					//actionForm.submit();					
				});
			});
</script>
<!-- MODAL -->
<form id="actionForm" action="list.do" method="get">
	<input type='hidden' name='pageNum' value='${pageMaker.pg.pageNum}'>
	<input type='hidden' name='amount' value='${pageMaker.pg.amount}'>
</form>
<div class="modal" id="myModal">
	<div class="modal-content">
		<div class="modal-header">
			<span class="close">&times;</span>
			<div class="modal-body">-</div>
		</div>
	</div>
</div>

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
			<!--paging-->
			<div class='pull-right'>
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
						<li class="pagination_button previous"><a href="${pageMaker.startPage-1}">PREV</a>
						</li>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<li class="pagination_button ${pageMaker.pg.pageNum==num ? 'active':''}"><a href="${num}">${num}</a></li>					
					</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<li class="pagination_button next"><a href="${pageMaker.endPage+1}">NEXT</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>
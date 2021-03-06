<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Baloo+Bhai'>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Jua&amp;subset=korean'>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!--  <link rel='stylesheet' type='text/css' href='resources/css/main.css'>-->
<title>First Project Index</title>

<script type="text/javascript">		
	function openNav() {
		document.getElementById('mySidenav').style.width = '300px';
	}
	function closeNav() {
		document.getElementById('mySidenav').style.width = '0';
	}
</script>
</head>

<body>
	<div class='container'>
		<header id='header'>
			<div class='upper'>
				<ul>
				<% 
					String id = (String)session.getAttribute("session_id");
					if(id==null){
				%>
					<li><a href='login.do?m=in'>로그인 </a></li>
					<li><a href='login.do?m=new_form'>회원가입 </a></li>
				<% 
					}
					else{					
				%>				
					<li><a href=''><%=id %> 님</a></li>
					<li><a href='#'>회원정보수정</a></li>
				<%
					}
				%>					
					<li><a href='login.do?m=out'>로그아웃</a></li>
				</ul>
			</div>
			<div class='open' onclick='openNav()'>&#9776;</div>
			<div class='title'>
				<h1>KKAKD FIRST PROJECT</h1>
			</div>
	</div>
	<div id='GNBBOX'>
		<nav id='GNB' class='clearfix'>
			<ul>
				<li><a href='index.do'>HOME</a></li>
				<li><a href=''>ADDRESS</a></li>
				<li><a href=''>BOARD</a></li>
				<li><a href=''>SESSION BOARD</a></li>
			</ul>
	</div>
	<div id='mySidenav' class='sidenav'>
		<ul>
			<li><a href='javascript:void(0)' class='closebtn'
				onclick='closeNav()'>&times;</a></li>
			<li><a href='login.do?m=in'>Login</a></li>
			<li><a href='login.do?m=new'>SignUp</a></li>
			<li><a href='#'>Logout</a></li>
		</ul>
	</div>
	</header>
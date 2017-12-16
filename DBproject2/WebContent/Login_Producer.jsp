<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>생산자 로그인</title>

<link href="css/layouts.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/design.css" rel="stylesheet" type="text/css">
<link href="css/SignUP.css" rel="stylesheet" type="text/css">

</head>
<body>

<div id="header">
		<div id="logo"><a href="MainPage.jsp" title="홈으로 이동">
						<img src="./img/logo1.png" width=150 height=100 alt=""/></a></div>
		<div id="join">
			<a href="#" title="로그인하기">LOGIN</a>
			<a href="#" title="가입하기">JOIN</a>
			<a href="#" title="사이트맵보기">SITEMAP</a> 
		</div>
</div>

	<div id="nav">
		<ul>
		<li><a href="#">농산물 이력관리 서비스</a></li>
		<li><a href="#">이력정보 조회</a></li>
		<li><a href="#">고객지원</a></li>
		</ul>
	</div>
	
	<div id="sub_menu">
	
	<h3>생산자</h3>
		<ul>
		<li><a href="#">로그인</a></li>
		<li><a href="SignIn_Producer.jsp" title="회원가입">회원가입</a></li>
		</ul>
	
	</div>

	<form action="producer_login" class="signUp" id="signupForm">
		<fieldset>
			<h1 class="signUpTitle">생산자 로그인</h1>
		<input type="text" class="signUpInput1" name="id"
			placeholder="Type your username" autofocus required> 
			<input type="password" class="signUpInput" name="pass" placeholder="Choose a password" required> 
			
		    <input type="submit" value="로그인" class="signUpButton">
		</fieldset>		
	</form>


</body>
</html>
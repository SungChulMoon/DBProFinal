<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>생산자 회원가입</title>

<link href="css/layouts.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/design.css" rel="stylesheet" type="text/css">
<link href="css/Login.css" rel="stylesheet" type="text/css">

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
	
	<h3>판매자</h3>
		<ul>
		<li><a href="Login_Producer.jsp">로그인</a></li>
		<li><a href="SignIn_Producer.jsp">회원가입</a></li>
		</ul>
	
	</div>
	
	
	<form action="seller_join" id="join_form">
		<fieldset>
			<legend>판매자 정보 입력</legend>
			<table class="form_basic" border="0" cellpadding="0" cellspacing="0" summary="회원가입 폼 : 아이디, 패스워드, 이름 등 입력하기">
			<colgroup>
				<col width="18%"/>
				<col />
			</colgroup>
			<tr>
				<th scope="row"><label for="id">아이디</label></th>
				<td><input type="text" class="txt_type" name="id" id="id" />&nbsp;<button type="button" class="id_btn btn_style">아이디 중복확인</button></td>
			</tr>
			<tr>
				<th scope="row"><label for="password">비밀번호</label></th>
				<td><input type="password" class="txt_type" name="password" id="password" /></td>
			</tr>
			
			<tr>
				<th scope="row"><label for="store">판매지점</label></th>
				<td><input type="text" class="txt_type1" name="name" id="store" /></td>
			</tr>
			
			</table>
		</fieldset>
		
		<div class="submit_reset_btn"><button type="submit" class="submit_btn btn_style btn_style2">확인</button>
		<button type="reset" class="reset_btn btn_style2">취소</button></div>
		
	</form>
	</div>

</body>
</html>
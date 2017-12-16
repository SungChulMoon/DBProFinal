<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/layouts.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/design.css" rel="stylesheet" type="text/css">

<title>농산물 이력 관리 시스템</title>
</head>
<body>

	<div id="header">
		<div id="logo"><a href="MainPage.jsp" title="홈으로 이동">
						<img src="./img/logo1.png" width=150 height=100 alt=""/></a></div>
		<div id="join" >
			<a href="#" title="로그아웃">LOGOUT</a>
			<a href="#" title="MY MENU">MY MENU</a>
			<a href="#" title="사이트맵보기">SITEMAP</a> 
		</div>
		
	</div>
	
	<div id="nav">
		<ul>
		<li><a href="#">농산물 이력관리 서비스</a></li>
		<li><a href="#">이력 정보 조회</a></li>
		<li><a href="#">고객지원</a></li>
		</ul>
	</div>


	<div id="content">
		<div id="title">
			<h1><img src="./img/banner.png" height=450 alt="챌린지 코리아 프로그램 안내"></h1>
		</div>
		<div id="col1">
			<div id="prom_list">
				<h3>농산물 이력 조회</h3>
				<ul>
					<li><input type="text" class="numInput"
						placeholder="농산물 이력 번호"> </a></li>
					<li><input type="submit" value="조회" class="numInput"></li>
					<li><img id="qr" src="./img/promlistIMG.png" height=200></li>
				</ul>
			</div>
<!-- 
			<div id="prom_banner">
				<h3>새로운 뉴스</h3>
				<div>
					<table cellspacing='0'>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
						</tr>

						<tr>
							<td>001</a></td>
							<td><a href="#">농산물 관리 시스템 페이지가 업데이트 되었습니다.</a></td>
							<td>admin</td>
							<td>2017-04-04</td>
						</tr>
					</table>
				</div>
			</div>-->
		</div>


		<div id="col2">
						
						<h3>페이지 이동</h3>
							

								<div>
									<a href="Login_Producer.jsp" title="자세히 보기"><img src="./img/producer.png" width=150 height=100 alt="버튼"/></a>
								</div>
								
								<div>
								<a href="Login_Distributor.jsp" title="자세히 보기"><img src="./img/distributor.png"width=150 height=100 alt="버튼"/></a>
								</div>
								
								<div>
								<a href="Login_Seller.jsp" title="자세히 보기"><img src="./img/seller.png" width=150 height=100 alt="버튼"/></a>
								</div>
								
							</div>
							
	
			
			
		</div>
		


</body>
</html>
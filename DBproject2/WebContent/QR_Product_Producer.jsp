<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>농산물 조회</title>

<link href="css/layouts.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/design.css" rel="stylesheet" type="text/css">
<link href="css/Login.css" rel="stylesheet" type="text/css">
<link href="css/qrProduct.css" rel="stylesheet" type="text/css">

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
		<h3>농산물 조회</h3>
	</div>
	
	
	<div id="productMain">
	<form action="#" id="join_form">
		<fieldset>
			<h3>생산자 정보</h3>
	      <table id="movListP" class="table-a" border="0" cellspacing="0" cellpadding="0" summary="생산자 정보">
	        
	        <colgroup>
	        <col width="*">
	        <col width="*">
	        <col width="*">
	        <col width="*">
	        <col width="*">
	        <col width="*">
	        </colgroup>
	        <tbody>
	          <tr>
	            <th class="hline rightline">생산자명</th>
	            <td class="hline rightline">강지우</td>
	           </tr> 
	            <th class="rightline">생산자ID</th>
	            <td class="rightline">pro1</td>
	           </tr> 
	            <th class="rightline">재배방법</th>
	            <td class="rightline">밀식재배</td>
	           </tr>
	            <th class="rightline">토양정보</th>
	            <td class="rightline">광주 그린농산</td>
	            
	          </tr>
		          
	        </tbody>
	      </table>

			
		</fieldset>
		</form>
		<button type="reset" class="reset_btn btn_style2"  onclick="location.href='QR_Product.jsp' ">뒤로가기</button></div>
		

	
	</div>
	

</body>
</html>
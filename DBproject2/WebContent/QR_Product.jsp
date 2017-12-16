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
			<h3>농산물 정보</h3>
	      <table id="movListP" class="table-c" border="0" cellspacing="0" cellpadding="0" summary="농산물 정보">
	        
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
	            <th class="hline rightline">일련번호</th>
	            <th class="hline rightline">농산물명</th>
	            <th class="hline rightline">생산자</th>
	            <th class="hline rightline">재배날짜</th>
	            <th class="hline rightline">출하량</th>
	          </tr>
	         
	          <tr>
	            <td class="rightline">1111</td>
	            <td class="rightline">당근</td>
	            <td class="rightline"><a href="QR_Product_Producer.jsp">강지우</a></td>
	            <td class="rightline">2017-04-04</td>
	            <td class="rightline">1kg</td>
	          </tr>
	          
	        </tbody>
	      </table>

			<!-- qr코드 생성 추가  -->
			
		</fieldset>
		</form>
	
	
		<form action="#" id="join_form">
		<fieldset>
			<h3>유통정보</h3>
	      <table id="movListP" class="table-c" border="0" cellspacing="0" cellpadding="0" summary="유통정보">
	        
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
	            <th class="hline rightline">입고일자</th>
	            <th class="hline rightline">출고일자</th>
	            <th class="hline rightline" >유통자</th>
	            <th class="hline rightline">출하량</th>
	          </tr>
	         
	          <tr>
	            <td class="rightline">입고 : 2017-11-27</td>
	            <td class="rightline">출고 : 2017-11-27</td>
	            <td class="rightline"><a href="QR_Product_Distributor.jsp">문성철</a></td>
	            <td class="rightline">1kg</td>
	          </tr>
	          
	        </tbody>
	      </table>

			
		</fieldset>
		</form>
		
		<form action="#" id="join_form">
		<fieldset>
			<h3>판매정보</h3>
	      <table id="movListP" class="table-c" border="0" cellspacing="0" cellpadding="0" summary="판매정보">
	        
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
	            <th class="hline rightline">입고일자</th>
	            <th class="hline rightline">판매일자</th>
	            <th class="hline rightline">판매처</th>
	            <th class="hline rightline">판매량</th>
	          </tr>
	         
	          <tr>
	            <td class="rightline">입고 : 2017-11-27</td>
	            <td class="rightline">판매 : 2017-11-28</td>
	            <td class="rightline"><a href="QR_Product_Seller.jsp">이마트</a></td>
	            <td class="rightline">1kg</td>
	          </tr>
	          
	        </tbody>
	      </table>
			
		</fieldset>
		</form>
	
	
	
	
	</div>
	

</body>
</html>
<%@page import="DB.DAO"%>
<%@page import="DB.productVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>생산자:상품조회</title>

<link href="css/layouts.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/design.css" rel="stylesheet" type="text/css">
<link href="css/search.css" rel="stylesheet" type="text/css">

</head>
<body>
<%
String d_id = (String)session.getAttribute("d_id");
String weight = (String)session.getAttribute("weight"); 
System.out.print(weight+"");
int num = Integer.parseInt(weight);
ArrayList<productVO> arr = DAO.searchProduct(d_id);

%>
	<div id="header">
		<div id="logo">
			<a href="MainPage.jsp" title="홈으로 이동"> <img src="./img/logo1.png"
				width=150 height=100 alt="" /></a>
		</div>
		<div id="join">
			<a href="#" title="로그아웃하기">LOGOUT</a> <a href="#" title="">MY
				MENU</a> <a href="#" title="사이트맵보기">SITEMAP</a>
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
			<li><a href="#">마이 메뉴</a></li>
			
			<li><%
			if(d_id!=null){%>
				<a href="ProductRegist.jsp">
				
			<%}else{%>
				<a href="Login_Producer.jsp">
		<%}%>
			상품 등록</a></li>
			<li>
			<% if(d_id!=null){%>
				<a href="ProductSearch.jsp">
			<%}else{%><a href="Login_Producer.jsp">
			<%} %>상품 조회</a></li>
		</ul>

	</div>

	<form action="#" id="sub_content">
		<h4>상품 조회</h4>
		<table cellspacing='0'>
			<tr>
				<th>일련번호</th>
				<th>품목</th>
				<th>단계</th>
				<th>생산날짜</th>
				<th>QR코드</th>
			</tr>
<%for(int i=0; i<arr.size();i++){ %>
			<tr>
			
				<td><%= arr.get(i).getNum() %></a></td>
				<td><%=arr.get(i).getMain() %></td>
				<td><a href="QR_Product_Distributor.jsp">유통단계</a></td>
				<td><%=arr.get(i).getDay() %></td>
				<td><a href="#">QR코드</a></td>
				
			</tr>
			<%} %>
		</table>

	</form>


</body>
</html>
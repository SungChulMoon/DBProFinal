<%@page import="DB.DAO"%>
<%@page import="DB.productVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>������:��ǰ��ȸ</title>

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
			<a href="MainPage.jsp" title="Ȩ���� �̵�"> <img src="./img/logo1.png"
				width=150 height=100 alt="" /></a>
		</div>
		<div id="join">
			<a href="#" title="�α׾ƿ��ϱ�">LOGOUT</a> <a href="#" title="">MY
				MENU</a> <a href="#" title="����Ʈ�ʺ���">SITEMAP</a>
		</div>
	</div>

	<div id="nav">
		<ul>
			<li><a href="#">��깰 �̷°��� ����</a></li>
			<li><a href="#">�̷����� ��ȸ</a></li>
			<li><a href="#">������</a></li>
		</ul>
	</div>

	<div id="sub_menu">

		<h3>������</h3>
		<ul>
			<li><a href="#">���� �޴�</a></li>
			
			<li><%
			if(d_id!=null){%>
				<a href="ProductRegist.jsp">
				
			<%}else{%>
				<a href="Login_Producer.jsp">
		<%}%>
			��ǰ ���</a></li>
			<li>
			<% if(d_id!=null){%>
				<a href="ProductSearch.jsp">
			<%}else{%><a href="Login_Producer.jsp">
			<%} %>��ǰ ��ȸ</a></li>
		</ul>

	</div>

	<form action="#" id="sub_content">
		<h4>��ǰ ��ȸ</h4>
		<table cellspacing='0'>
			<tr>
				<th>�Ϸù�ȣ</th>
				<th>ǰ��</th>
				<th>�ܰ�</th>
				<th>���곯¥</th>
				<th>QR�ڵ�</th>
			</tr>
<%for(int i=0; i<arr.size();i++){ %>
			<tr>
			
				<td><%= arr.get(i).getNum() %></a></td>
				<td><%=arr.get(i).getMain() %></td>
				<td><a href="QR_Product_Distributor.jsp">����ܰ�</a></td>
				<td><%=arr.get(i).getDay() %></td>
				<td><a href="#">QR�ڵ�</a></td>
				
			</tr>
			<%} %>
		</table>

	</form>


</body>
</html>
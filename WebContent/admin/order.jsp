<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("UTF-8");
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<%-- path기준으로 모든 자원(css,img,js)를 접근하여 사용할 수 있다. --%>
<link rel="stylesheet" href="<%=path %>/css/reset.css"> 
<style>
#orderInfo{
	width:1000px;
	
}
#tab_order {
	margin:25px;
	width:1000px;
}
#tab_order th{
	background-color:#cd595a;
	color:white;
	padding-top:10px;
	padding-bottom:10px;
}
#tab_order tr{
	text-align:center;
	background-color:white;
}


#tab_order td{
	padding-top:10px;
	padding-bottom:10px;
}
#tab_order tr:hover{
	background-color:#f9ebdf;
	
}

#tab_title{
	padding-left:30px;
	font-size:20px;
}
#reg_order{
	width:1000px;
	text-align:right;
}
#reg_button{
	width:70px;
	height:30px;
	font-size:16px;
}
#tab_search{
	margin:25px;
	padding-left:30px;
}
</style>
</head>
<body>
<jsp:useBean id="dao" class="project.dao_admin.DAO_admin"></jsp:useBean>
<c:set var="purchase" value="${dao.searchPurchase(param.customer_id)}"></c:set>
	<div id="orderInfo">
			<div id="tab_title">주문관리</div>
	<div id="search">
			<form method="post">
			<table id="tab_search">
				<tr><th>주문자ID&nbsp;</th><td><input id="customer_id" name="customer_id" value="${param.customer_id}">&nbsp;</td><td><input type="submit" value="조회"></td></tr>
			</table>
			</form>
		</div>
		<table id="tab_order">
			<tr><th>주문번호</th><th>주문자ID</th><th>상품ID</th><th>상품명</th><th>주문일자</th><th>처리상태</th><th>상세/수정</th></tr>
			<c:forEach var="pur" items="${purchase }">
			<tr><td>${pur.purchase_id}</td><td>${pur.customer_id}</td><td>${pur.product_id}</td><td>${pur.product_name}</td><td>${pur.purchase_step_date}</td><td>${pur.purchase_step}</td><td><input type="button" value="상세" onclick="location.href='order_detail.jsp'"><input type="button" value="수정" onclick="location.href='order_modify.jsp'"></td></tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>







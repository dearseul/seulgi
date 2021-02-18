<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"%>
<% request.setCharacterEncoding("UTF-8");
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- path기준으로 모든 자원(css,img,js)를 접근하여 사용할 수 있다. --%>
<link rel="stylesheet" href="<%=path %>/a01_sign/reset.css"> 
<title>Insert title here</title>
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
</style>
</head>
<body>
	<div id="orderInfo">
		<table id="tab_order">
			<div id="tab_title">주문관리</div>
			<tr><th>주문번호</th><th>주문자ID</th><th>상품ID</th><th>상품명</th><th>주문금액</th><th>처리상태</th><th>상세/수정</th></tr>
			<tr><td>@@</td><td>hong</td><td>1234</td><td>@@@</td><td>45,000</td><td>배송준비</td><td><input type="button" value="상세" onclick="location.href='order_detail.jsp'"><input type="button" value="수정" onclick="location.href='order_modify.jsp'"></td></tr>
			<tr><td>@@</td><td>hong</td><td>1234</td><td>@@@</td><td>45,000</td><td>배송중</td><td><input type="button" value="상세" onclick="location.href='order_detail.jsp'"><input type="button" value="수정" onclick="location.href='order_modify.jsp'"></td></tr>
			<tr><td>@@</td><td>hong</td><td>1234</td><td>@@@</td><td>45,000</td><td>배송완료</td><td><input type="button" value="상세" onclick="location.href='order_detail.jsp'"><input type="button" value="수정" onclick="location.href='order_modify.jsp'"></td></tr>
			<tr><td>@@</td><td>hong</td><td>1234</td><td>@@@</td><td>45,000</td><td>상품준비중</td><td><input type="button" value="상세" onclick="location.href='order_detail.jsp'"><input type="button" value="수정" onclick="location.href='order_modify.jsp'"></td></tr>
		</table>
	</div>
</body>
</html>







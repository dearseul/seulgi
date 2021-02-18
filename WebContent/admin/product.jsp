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
<title>관리자 페이지</title>
<%-- path기준으로 모든 자원(css,img,js)를 접근하여 사용할 수 있다. --%>
<link rel="stylesheet" href="<%=path %>/css/reset.css"> 
<style>
#productInfo{
	width:1000px;
	
}
#tab_prod {
	margin:25px;
	width:1000px;
}
#tab_prod th{
	background-color:#cd595a;
	color:white;
	padding-top:10px;
	padding-bottom:10px;
}
#tab_prod tr{
	text-align:center;
	background-color:white;
}


#tab_prod td{
	padding-top:10px;
	padding-bottom:10px;
}
#tab_prod tr:hover{
	background-color:#f9ebdf;
	
}

#tab_title{
	padding-left:30px;
	font-size:20px;
}
#reg_prod{
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
	<div id="productInfo">
		<table id="tab_prod">
			<div id="tab_title">상품관리</div>
			<div id="reg_prod"><input id="reg_button" type="button" value="상품등록" onclick="location.href='product_insert.jsp'"></div>
			<tr><th>카테고리</th><th>상품ID</th><th>상품명</th><th>가격</th><th>재고</th><th>상세/수정</th></tr>
			<tr><td>@@</td><td>123456</td><td>@@</td><td>50,000</td><td>400</td><td><input type="button" value="상세" onclick="location.href='product_detail.jsp'"><input type="button" value="수정" onclick="location.href='product_modify.jsp'"></td></tr>
			<tr><td>@@</td><td>123456</td><td>@@</td><td>50,000</td><td>400</td><td><input type="button" value="상세" onclick="location.href='product_detail.jsp'"><input type="button" value="수정" onclick="location.href='product_modify.jsp'"></td></tr>
			<tr><td>@@</td><td>123456</td><td>@@</td><td>50,000</td><td>400</td><td><input type="button" value="상세" onclick="location.href='product_detail.jsp'"><input type="button" value="수정" onclick="location.href='product_modify.jsp'"></td></tr>
			<tr><td>@@</td><td>123456</td><td>@@</td><td>50,000</td><td>400</td><td><input type="button" value="상세" onclick="location.href='product_detail.jsp'"><input type="button" value="수정" onclick="location.href='product_modify.jsp'"></td></tr>
			<tr><td>@@</td><td>123456</td><td>@@</td><td>50,000</td><td>400</td><td><input type="button" value="상세" onclick="location.href='product_detail.jsp'"><input type="button" value="수정" onclick="location.href='product_modify.jsp'"></td></tr>
		</table>
	</div>
</body>
</html>







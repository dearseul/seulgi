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
#tab_search{
	margin:25px;
	padding-left:30px;
}
</style>
</head>
<body>
	<div id="productInfo">
			<div id="tab_title">상품관리</div>
			<div id="search">
				<form method="post">
				<table id="tab_search">
					<tr><th>상품명&nbsp;</th>
						<td><input id="product_name" name="product_name" value="${param.product_name}">&nbsp;</td>
						<th>카테고리&nbsp;</th>
						<td><input id="product_name" name="product_category" value="${param.product_category}">&nbsp;</td>
						<td colspan="2"><input type="submit" value="조회"></td></tr>
				</table>
				</form>
				<jsp:useBean id="dao" class="project.dao_admin.DAO_admin"></jsp:useBean>
				<c:set var="pro" value="${dao.searchProduct(param.product_name,param.product_category)}"></c:set>
			</div>
			<div id="reg_prod"><input id="reg_button" type="button" value="상품등록" onclick="location.href='product_insert.jsp'"></div>
		<table id="tab_prod">
			<tr><th>카테고리</th><th>상품ID</th><th>상품명</th><th>가격</th><th>재고</th><th>상세/수정</th></tr>
			<c:forEach var="product" items="${pro}">
			<tr><td>${product.product_category}</td><td>${product.product_id}</td><td>${product.product_name}</td><td>${product.product_price}</td><td>${product.product_stock}</td><td><input type="button" value="상세/수정" onclick="detail('${product.product_id}')"></td></tr>
			</c:forEach>
		</table>
	</div>
</body>
<script>
function detail(product_id){
	location.href="product_detail.jsp?product_id="+product_id;
}
</script>
</html>







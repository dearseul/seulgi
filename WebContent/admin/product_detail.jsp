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
#content{
	width:1050px;
	margin: 0 auto;
}
#product_detail{
	padding:50px;
}
#prod_tab{
	width:700px;
	margin:0 auto;
}
#prod_tab th{
	background-color:#f9ebdf;
	vertical-align:middle;
	width:200px;
	height:50px;
	border:1px solid black;	
}
#prod_tab td{
	vertical-align:middle;
}

#input_pid, #input_category, #input_pname, #input_price,#input_weight, #input_capacity,#input_wrap,
#input_img, #input_stock, #input_regdate{
	width:500px;
	height:50px;
}


#prod_text{
	padding-left:130px;
	padding-bottom:20px;
}
#submit1{
	width:50px;
	height:30px;
}
#toproductpage{
	width:70px;
	height:30px;
}
#button{
	text-align:center;
}

</style>

</head>
<body>
<jsp:useBean id="dao" class="project.dao_admin.DAO_admin"></jsp:useBean>
<jsp:useBean id="produpt" class="project.vo_admin.Product"></jsp:useBean>
<jsp:setProperty property="*" name="produpt"></jsp:setProperty>
<c:set var="prod" value="${dao.getProduct(param.product_id)}"></c:set>
<c:if test="${param.proc=='upt'}">${dao.updateProduct(produpt)}</c:if>
<c:if test="${param.proc=='del'}">${dao.deleteProduct(prod.product_id)}
<script>if(confirm("삭제완료\n상품조회페이지로 이동합니다.")){location.href="admin01.jsp?pageChange=product.jsp"}</script></c:if>

	<div id="content">
		<div id="product_detail">
			<div id="prod_text">상품정보상세[상품ID: ${param.product_id}]</div>
			<form method="post" id="frm">
				<table id="prod_tab">
					<input type="hidden" name="proc" value="">
					<tr><th>카테고리</th><td><input id="input_pid" name="product_category" value="${param.product_category==null?prod.product_category:param.product_category}"></td></tr>
					<tr><th>상품ID</th><td><input id="input_pid" name="product_id" value="${param.product_id==null?prod.product_id:param.product_id}"></td></tr>
					<tr><th>상품명</th><td><input id="input_pid" name="product_name" value="${param.product_name==null?prod.product_name:param.product_name}"></td></tr>
					<tr><th>가격</th><td><input id="input_pid" name="product_price" value="${param.product_price==null?prod.product_price:param.product_price}"></td></tr>
					<tr><th>재고</th><td><input id="input_pid" name="product_stock" value="${param.product_stock==null?prod.product_stock:param.product_stock}"></td></tr>
					<tr><th>판매량</th><td><input id="input_pid" name="product_rate" value="${param.product_rate==null?prod.product_rate:param.product_rate}"></td></tr>
					<tr><th>이미지경로</th><td><input id="input_pid" name="product_img_src" value="${param.product_img_src==null?prod.product_img_src:param.product_img_src}"></td></tr>
					<tr><th id="button" colspan="2">
						<input id="submit1" type="button" value="수정" onclick="upt();">
						<input id="submit1" type="button" value="삭제" onclick="del1();">
						<input id="toproductpage" type="button" value="상품조회" onclick="location.href='admin01.jsp?pageChange=product.jsp'">
						</th></tr>
				</table>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
function upt(){
	document.querySelector("[name=proc]").value="upt";
	document.querySelector("#frm").submit();
	alert("상품수정완료");
}
function del1(){
	if(confirm("정말로 삭제하시겠습니까?")){
		document.querySelector("[name=proc]").value="del";
		document.querySelector("#frm").submit();
	}
}


</script>
</html>






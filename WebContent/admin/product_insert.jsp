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
#submit2{
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
<jsp:useBean id="prodins" class="project.vo_admin.Product"></jsp:useBean>
<jsp:setProperty property="*" name="prodins"></jsp:setProperty>
<c:if test="${param.proc=='ins'}">${dao.insertProduct(prodins) }</c:if>
	<div id="content">
		<div id="product_detail">
			<div id="prod_text">상품등록</div>
			<form id="frm" method="post">
				<table id="prod_tab">
					<input type="hidden" name="proc" value=""/>
					<tr><th>상품명</th><td><input id="input_category" type="text" name="product_name" value="${param.product_name}"></td></tr>
					<tr><th>카테고리</th><td><input id="input_pname" type="text" name="product_category" value="${param.product_category}"></td></tr>
					<tr><th>가격</th><td><input id="input_price" type="text" name="product_price" value="${param.product_price}"></td></tr>
					<tr><th>재고</th><td><input id="input_weight" type="text" name="product_stock" value="${param.product_stock}"></td></tr>
					<tr><th>판매량</th><td><input id="input_capacity" type="text" name="product_rate" value="${param.product_rate}"></td></tr>
					<tr><th>이미지경로</th><td><input id="input_wrap" type="text" name="product_img_src" value="${param.product_img_src}"></td></tr>
					<tr><th id="button" colspan="2">
						<input id="submit1" type="button" value="등록" onclick="insert()">
						<input id="submit2" type="button" value="상품조회" onclick="location.href='admin01.jsp?pageChange=product.jsp'">
					</th></tr>
				</table>
			</form>
		</div>
	</div>
</body>
<script>
function insert(){
	document.querySelector("[name=proc]").value="ins";
	document.querySelector("#frm").submit();
	alert("상품등록완료");
}
</script>
</html>
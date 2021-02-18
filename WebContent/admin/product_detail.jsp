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
#submit{
	width:50px;
	height:30px;
}
#button{
	text-align:center;
}

</style>

</head>
<body>
	<div id="content">
		<div id="product_detail">
			<div id="prod_text">상품정보상세</div>
			<form>
				<table id="prod_tab">
					<tr><th>카테고리</th><td><input id="input_category" type="text" name="category"></td></tr>
					<tr><th>상품ID</th><td><input id="input_pid" type="text" name="pid"></td></tr>
					<tr><th>상품명</th><td><input id="input_pname" type="text" name="pname"></td></tr>
					<tr><th>가격</th><td><input id="input_price" type="text" name="price"></td></tr>
					<tr><th>중량</th><td><input id="input_weight" type="text" name="weight"></td></tr>
					<tr><th>용량</th><td><input id="input_capacity" type="text" name="capacity"></td></tr>
					<tr><th>포장타입</th><td><input id="input_wrap" type="text" name="wrap"></td></tr>
					<tr><th>이미지경로</th><td><input id="input_img" type="text" name="img"></td></tr>
					<tr><th>재고</th><td><input id="input_stock" type="text" name="stock"></td></tr>
					<tr><th>등록일</th><td><input id="input_regdate" type="text" name="regdate"></td></tr>
					<tr><th id="button" colspan="2"><input id="submit" type="button" value="수정" onclick="location.href='product_modify.jsp'"></th></tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>
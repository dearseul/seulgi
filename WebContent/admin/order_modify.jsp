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
#order_detail{
	padding:50px;
}
#order_tab{
	width:700px;
	margin:0 auto;
}
#order_tab th{
	background-color:#f9ebdf;
	vertical-align:middle;
	width:200px;
	height:50px;
	border:1px solid black;	
}
#order_tab td{

	vertical-align:middle;
}

#input_ono, #input_id, #input_pid, #input_pname, #input_price,#input_cnt, #input_tprice,#input_loc,
#input_option, #input_cnt, #input_orderdate, #input_method, #input_state{
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
		<div id="order_detail">
			<div id="prod_text">주문정보수정</div>
			<form>
				<table id="order_tab">
					<tr><th>주문번호</th><td><input id="input_ono" type="text" name="ono"></td></tr>
					<tr><th>주문자ID</th><td><input id="input_id" type="text" name="id"></td></tr>
					<tr><th>배송지정보</th><td><input id="input_loc" type="text" name="loc"></td></tr>
					<tr><th>상품ID</th><td><input id="input_pid" type="text" name="pid"></td></tr>
					<tr><th>상품명</th><td><input id="input_pname" type="text" name="pname"></td></tr>
					<tr><th>가격</th><td><input id="input_price" type="text" name="price"></td></tr>
					<tr><th>옵션</th><td><input id="input_option" type="text" name="option"></td></tr>
					<tr><th>수량</th><td><input id="input_cnt" type="text" name="cnt"></td></tr>
					<tr><th>결제금액</th><td><input id="input_tprice" type="text" name="tprice"></td></tr>
					<tr><th>결제방식</th><td><input id="input_method" type="text" name="method"></td></tr>
					<tr><th>주문일자</th><td><input id="input_orderdate" type="text" name="orderdate"></td></tr>
					<tr><th>처리상태</th><td><input id="input_state" type="text" name="state"></td></tr>
					<tr><th id="button" colspan="2"><input id="submit" type="button" value="수정" ></th></tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>
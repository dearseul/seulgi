<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.*"
    import="project.dao_payment_page.Dao_payment_page"
    import="project.vo_payment_page.paymentPro"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
   Dao_payment_page paydao = new Dao_payment_page();
   ArrayList<paymentPro> paylist = paydao.getPayPro();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/payCss.css">
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/main_upper.css">
</head>
<body>
<jsp:include page="../../main_upper.jsp" flush="false"/>
	<div class="p1_title">
	   <div class="title">
	      <span>결제 페이지</span>
	      <hr/>
	   </div>
	</div>
	<div id="pay-container">
		<table id="pay-List">
			<col width="10%"><col width="20%"><col width="30%"><col width="10%">
			<col width="10%"><col width="10%"><col width="20%">
			<tr><th>번호</th><th>이미지</th><th>상품정보</th><th>수량</th><th>가격</th><th>주문금액</th><tr>
			<tr><td>1</td>
				<td><img src="<%=path%>/<%=paylist.get(0).getProduct_img_src()%>"/></td>
				<td class="left"><%=paylist.get(0).getProduct_name() %></td>
				<td>4</td>
				<td><%=paylist.get(0).getProduct_price() %></td>
				<td>3,000</td><tr>		
			<tr><td>2</td>
				<td><img src="<%=path%>/<%=paylist.get(1).getProduct_img_src()%>"/></td>
				<td class="left"><%=paylist.get(1).getProduct_name() %></td>
				<td>3</td>
				<td><%=paylist.get(1).getProduct_price() %></td>
				<td>3,000</td><tr>		
		</table>
		<div id="pay-box">
			<div id="payKind">
				<label><input type="radio" name="payKind" value="card">카드</label>
         		<label><input type="radio" name="payKind" value="transfer">계좌이체</label>
         		<label><input type="radio" name="payKind" value="phone">핸드폰결제</label>
         		<label><input type="radio" name="payKind" value="gift">상품권</label>
			</div>
			<div id="pay-btn">
				<input type="button" value="결제하기"/>
				<div id="totalPay">
				30,000원
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.*"
    import="project.dao_payment_page.Dao_payment_page"
    import="project.vo_payment_page.paymentPro"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
   String customer_id = (String)session.getAttribute("id");
   Dao_payment_page paydao = new Dao_payment_page();
   ArrayList<paymentPro> paylist = paydao.getPayPro(customer_id);
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
		<form method="post" id="form">
			
		<table id="pay-List">
			<col width="10%"><col width="20%"><col width="30%"><col width="10%">
			<col width="10%"><col width="10%"><col width="20%">
			<tr><th>번호</th><th>이미지</th><th>상품정보</th><th>수량</th><th>가격</th><th>주문금액</th><tr>
			<%
				String[] cnts =  request.getParameterValues("cnt");
			//카운트값을 받지못하면 에러가 나고, 임의로 cnt=i&cnt=i를 넣어야 작동
				int[] count = new int[90];
				String y = request.getParameter("pno");
				log("########"+y);
				for(int i=0; i<cnts.length;i++){
					count[i] = Integer.parseInt(cnts[i]);
				}
				int total = 0;
				for(int i=0; i<paylist.size(); i++){
					total+=count[i]*paylist.get(i).getProduct_price();
			%>
			<input type="hidden" name="pno" value="<%=paylist.get(i).getPurchase_id() %>"/>
			<tr>
				<td><%=i+1 %></td>
				<td><img src="<%=path%>/<%=paylist.get(i).getProduct_img_src()%>"/></td>
				<td class="left"><%=paylist.get(i).getProduct_name() %></td>
				<td><%=cnts[i] %></td>
				<td><%=paylist.get(i).getProduct_price() %></td>
				<td><%= count[i]*paylist.get(i).getProduct_price() %></td><tr>		
			<%} %>
		</table>
		</form>
		<div id="pay-box">
			<div id="payKind">
				<label><input type="radio" name="payKind" value="card">카드</label>
         		<label><input type="radio" name="payKind" value="transfer">계좌이체</label>
         		<label><input type="radio" name="payKind" value="phone">핸드폰결제</label>
         		<label><input type="radio" name="payKind" value="gift">상품권</label>
			</div>
			<div id="pay-btn">
				<input type="button" value="결제하기" onclick="sendPay()"/>
				<div id="totalPay">
				<%=total %>원
				</div>
			</div>
		</div>
	</div>
</body>
	<script type="text/javascript">
		function sendPay(){
<%-- 			document.querySelector("[name=pno]").value="<%=paylist.get(i).getPurchase_id() %>"; --%>
			document.querySelector("form").action="update.jsp";
			document.querySelector("form").submit();
		}
		
	
		
	</script>
</html>
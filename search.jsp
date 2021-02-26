<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import ="project.vo.*"
    import ="project.Dao.*"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
   String customer_id = (String)session.getAttribute("id");
   String pass = (String)session.getAttribute("pw");
   String sword = request.getParameter("sword");
   if(sword == null) sword="";
   System.out.println("sword: " + sword);
   if(customer_id!=null && pass!=null){
   		System.out.println("search: " + customer_id);
   		System.out.println("search: " + pass);
   }
   
	products_dao dao = new products_dao();
	ArrayList<Products> plist =	dao.getProduct(sword);
	
   
   // 검색어(sword) 를 통해 물건테이블db 조회 ==>
   //	SELECT * FROM products WHERE product_name LIKE '%'||'?'|| '%';
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**Search**</title>
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/middle.css"> 
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/main_upper.css">  
<style type="text/css">
</style>
</head>
<body>
<jsp:include page="../../main_upper.jsp" flush="false"/>
      <div class="main_b1">
      <div class="main_b1_plist">
         <div class="b1_title">
            <h3 class="title">
               <span>오늘의 추천 상품</span>
               <hr/>
            </h3>
         </div>
         <div class="b1_list">
         	<% for(int i=0;i<plist.size();i++){ %>
            <div class="list" style="margin: 0px 18px 0px 30px;">
               <img src="<%=path %>/<%=plist.get(i).getProduct_img_src()%>"/>
               <div class="pInfo"><%=plist.get(i).getProduct_name()%></div>
               <div class="pPrice"><%=plist.get(i).getProduct_price()%></div>
            </div>
            <%} %>
            <%--
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <img src="<%=path %>/images/bowl03.jpg">
               <div class="pInfo">디저트볼 화이트</div>
               <div class="pPrice">6,500</div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <a href="payment_page.html" style="text-decoration:none; color:black;">
               <img src="<%=path %>/images/bowl04.jpg">
               <div class="pInfo">디저트볼 블랙</div>
               <div class="pPrice">6,500</div></a>
            </div>
            <div class="list" style="margin: 0px 0px 0px 0px;">
               <img src="<%=path %>/images/bowl05.jpg">
               <div class="pInfo">디저트볼 라벤더</div>
               <div class="pPrice">6,500</div>
            </div>
             --%>
         </div>
      </div>
   </div>
</body>
</html>
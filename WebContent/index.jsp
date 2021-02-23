<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project.dao_main_newPro.Dao_mainNewPro"
    import="project.vo_main_newPro.groupProducts"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
   Dao_mainNewPro pdao = new Dao_mainNewPro();
   ArrayList<groupProducts> plist = pdao.getNewPro();
   
   ArrayList<groupProducts> pplist = pdao.getPopPro();
   
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**Project**</title>
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/middle.css"> 
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/main_upper.css">  
<style type="text/css">
</style>
</head>
<body>
<jsp:include page="main_upper.jsp" flush="false"/>
   <div class="ad-container">
      <img id="first" src="images/jumalprice.jpg">
      <div class="btn-box">
         <button id="left" onclick="nextImg('left')"><i class="fas fa-arrow-circle-left"></i></button>
         <button id="right" onclick="nextImg('right')"><i class="fas fa-arrow-circle-right"></i></button>
      </div>
   </div>
   <!-- ===================================================================================== -->
	<div class="main_b1">
		<div class="main_b1_plist">
			<div class="b1_title">
			<h3 class="title">
				<span>신상품</span>
				<hr/>
			</h3>
		</div>
		<div class="b1_list">
            <div class="list" style="margin: 0px 18px 0px 30px;">
               <img src="<%=path %>/<%=plist.get(0).getProduct_img_src()%>"/>
               <div class="pInfo"><%=plist.get(0).getProduct_name() %></div>
               <div class="pPrice"><%=plist.get(0).getProduct_price() %></div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <img src="<%=path %>/<%=plist.get(1).getProduct_img_src()%>">
               <div class="pInfo"><%=plist.get(1).getProduct_name() %></div>
               <div class="pPrice"><%=plist.get(1).getProduct_price() %></div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <img src="<%=path %>/<%=plist.get(2).getProduct_img_src()%>">
               <div class="pInfo"><%=plist.get(2).getProduct_name() %></div>
               <div class="pPrice"><%=plist.get(2).getProduct_price() %></div>
            </div>
            <div class="list" style="margin: 0px 0px 0px 0px;">
               <img src="<%=path %>/<%=plist.get(3).getProduct_img_src()%>">
               <div class="pInfo"><%=plist.get(3).getProduct_name() %></div>
               <div class="pPrice"><%=plist.get(3).getProduct_price() %></div>
            </div>
  
         </div>
      </div>
   </div>
   <!-- ===================================================================================== -->
   <div class="main_b1">
      <div class="main_b1_plist">
         <div class="b1_title">
            <h3 class="title">
               <span>인기 상품</span>
               <hr/>
            </h3>
         </div>
         <div class="b1_list">
            <div class="list" style="margin: 0px 18px 0px 30px;">
               <img src="<%=path %>/<%=pplist.get(0).getProduct_img_src()%>">
               <div class="pInfo"><%=pplist.get(0).getProduct_name() %></div>
               <div class="pPrice"><%=pplist.get(0).getProduct_price() %></div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <img src="<%=path %>/<%=pplist.get(1).getProduct_img_src()%>">
               <div class="pInfo"><%=pplist.get(1).getProduct_name() %></div>
               <div class="pPrice"><%=pplist.get(1).getProduct_price() %></div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <img src="<%=path %>/<%=pplist.get(2).getProduct_img_src()%>">
               <div class="pInfo"><%=pplist.get(2).getProduct_name() %></div>
               <div class="pPrice"><%=pplist.get(2).getProduct_price() %></div>
            </div>
            <div class="list" style="margin: 0px 0px 0px 0px;">
               <img src="<%=path %>/<%=pplist.get(3).getProduct_img_src()%>">
               <div class="pInfo"><%=pplist.get(3).getProduct_name() %></div>
               <div class="pPrice"><%=pplist.get(3).getProduct_price() %></div>
            </div>
         </div>
      </div>
   </div>
</body>
<script>
var imgNum=0;
function nextImg(direction){
   var imgObj = document.querySelector("#first");
   if(direction.equals('left')){
      imgNum <=0 ? imgNum=3 : imgNum--;
   }else{
      imgNum>=3 ? imgNum=0 : imgNum++;
   }
   switch(imgNum){
   case 0 : imgObj.src="images/bowl02.jpg"; break;
   case 1 : imgObj.src="images/bowl03.jpg"; break;
   case 2 : imgObj.src="images/bowl04.jpg"; break;
   case 3 : imgObj.src="images/bowl05.jpg"; break;
   }
   
}
</script>
</html>
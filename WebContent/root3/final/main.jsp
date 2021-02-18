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
<title>Insert title here</title>
<link rel="stylesheet" 
   href="<%=path%>/a00_com/a00_com.css">
<link type ="text/css" rel="stylesheet" href="../css/middle.css"> 
<link type ="text/css" rel="stylesheet" href="../css/main_upper.css">  
<style type="text/css">
</style>
</head>
<body>
<jsp:include page="main_upper.jsp" flush="false"/>
   <div class="ad-container">
      <img id="first" src="../img_kyh/bowl06.jpg">
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
               <span>오늘의 추천 상품</span>
               <hr/>
            </h3>
         </div>
         <div class="b1_list">
            <div class="list" style="margin: 0px 18px 0px 30px;">
               <img src="../img_kyh/bowl01.jpg"/>
               <div class="pInfo">디저트플레이트</div>
               <div class="pPrice">12,900</div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <img src="../img_kyh/bowl03.jpg">
               <div class="pInfo">디저트볼 화이트</div>
               <div class="pPrice">6,500</div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <a href="payment_page.html" style="text-decoration:none; color:black;">
               <img src="../img_kyh/bowl04.jpg">
               <div class="pInfo">디저트볼 블랙</div>
               <div class="pPrice">6,500</div></a>
            </div>
            <div class="list" style="margin: 0px 0px 0px 0px;">
               <img src="../img_kyh/bowl05.jpg">
               <div class="pInfo">디저트볼 라벤더</div>
               <div class="pPrice">6,500</div>
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
               <img src="../img_kyh/bowl07.jpg">
               <div class="pInfo">빅머그(파우더핑크)</div>
               <div class="pPrice">13,900</div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <img src="../img_kyh/bowl08.jpg">
               <div class="pInfo">빅머그(카라멜베이지)</div>
               <div class="pPrice">13,900</div>
            </div>
            <div class="list" style="margin: 0px 18px 0px 0px;">
               <img src="../img_kyh/bowl01.jpg">
               <div class="pInfo">디저트플레이트</div>
               <div class="pPrice">12,900</div>
            </div>
            <div class="list" style="margin: 0px 0px 0px 0px;">
               <img src="../img_kyh/bowl03.jpg">
               <div class="pInfo">디저트볼 화이트</div>
               <div class="pPrice">6,500</div>
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
   case 0 : imgObj.src="../img_kyh/bowl02.jpg"; break;
   case 1 : imgObj.src="../img_kyh/bowl03.jpg"; break;
   case 2 : imgObj.src="../img_kyh/bowl04.jpg"; break;
   case 3 : imgObj.src="../img_kyh/bowl05.jpg"; break;
   }
   
}
</script>
</html>
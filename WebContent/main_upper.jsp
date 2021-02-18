<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.*"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/main_upper.css">
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/reset.css">
</head>
<body>
   <div class="page">
      <div class="layout">
         <header class="header">
            <div class="upper">
               <div class="total_upper">
                  <div class="upper_layout">
                     <div class="left_logo">
                        <a class="logo" href="<%=path %>/index.jsp">
                           <img src="<%=path %>/images/logo.png" alt="메인 로고" class="icon" style="display: block">
                        </a>
                     </div>
                     <div class="center_menu">
                        <form action="<%=path %>/sub/join/search.jsp">
                           <input name="sword" type="text" class="inp_search">
                           <input type="image" class="btn_search" src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png">
                        </form>
                     </div>
                     <div class="right">
                        <a class="cart" title="장바구니" href="<%=path %>/sub/cart/cart.jsp">
                        
                        </a>
                        <div class="login">
                           <ul class="list_menu">
                              <li class="menu none_sub menu_join"><a href="<%=path %>/sub/join/login.jsp" class="login_text">로그인</a></li>
                              <li class="menu none_sub"><a href="<%=path %>/sub/join/signUp.jsp" class="login_text">회원가입</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="lower">
               <div class="total_lower">
                  <div class="lower_layout">
                  <%--
                     <ul class="lower_menu">
                        <li id="category" class="second_menu">전체카테고리</li>
                        <li class="second_menu"><a href="best.jsp">베스트</a></li>
                        <li class="second_menu"><a href="commentary.jsp">후기</a></li>
                     </ul>
                  
                     <nav class="lower_menu">
                        <a id="category" class="second_menu">전체카테고리</a>
                        <a class="second_menu" href="best.jsp">베스트</a>
                        <a class="second_menu" href="commentary.jsp">후기</a>
                     </nav>
                  --%>
                     <nav>
                        <ul>
                           <li class="dropdown">
                              <div class="dropdown-menu"><a href="<%=path %>/sub/category/category.jsp">전체카테고리</a></div>
                              <div class="dropdown-content">
                                 <a href="dish1.jsp">dish1</a>
                                 <a href="dish2.jsp">dish2</a>
                                 <a href="dish3.jsp">dish3</a>
                                 <a href="dish4.jsp">dish4</a>
                                 <a href="dish5.jsp">dish5</a>
                                 <a href="dish6.jsp">dish6</a>
                                 <a href="dish7.jsp">dish7</a>
                              </div>
                           </li>
                           <li class="dropdown">
                              <div class="dropdown-menu">
                                 <a href="<%=path %>/sub/best/best.jsp">베스트</a>
                              </div>
                           <!--
                           </li>
                           <li class="dropdown">
                              <div class="dropdown-menu">
                                 <a href="">후기</a>
                              </div>
                           </li>
                             -->
                           <li class="dropdown">
                           		<div class="dropdown-menu">
                           			<a href="<%=path %>/sub/customService/customer.jsp">고객센터</a>
                           		</div>
                           </li>	
                        </ul>
                     </nav>
                  </div>
               </div>
            </div>
         </header>
         <div class="home-page">
         
         </div>
         <footer class="footer">
         
         </footer>
      </div>
   </div>
</body>
</html>
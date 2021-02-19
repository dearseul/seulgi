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

<script>
   window.onload=function(){

   }
</script>
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/main_upper.css">  
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/cart.css">
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
                        <form action="search.jsp">
                           <input name="sword" type="text" class="inp_search">
                           <input type="image" class="btn_search" src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png">
                        </form>
                     </div>
                     <div class="right">
                        <a class="cart" title="장바구니" href="<%=path %>/sub/cart/cart.jsp">
                        
                        </a>
                        <div class="login">
                           <ul class="list_menu">
                              <li class="menu none_sub menu_join"><a href="<%=path %>/join/login.jsp" class="login_text">로그인</a></li>
                              <li class="menu none_sub"><a href="<%=path %>/join/signUp.jsp" class="login_text">회원가입</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </header>
         <div class="main">
            <div class="container">
               <div class="page_content">
                  <div class="left">
                     <div class="left_content">
                        <div class="upper_option">
                           <div class="uo_content">
                              <span class="upper_left">
                                 <label class="left_tb">
                                    <div class="bt">
                                       <input type="checkbox" class="all_select_bt">
                                    </div>
                                    <span class="all_text">
                                       <span class="text">모두선택</span>
                                    </span>
                                 </label>
                              </span>
                              <span class="upper_right">
                                 <button class="selected_delete_bt">선택삭제</button>
                              </span>
                           </div>
                        </div>
                        <ul class="cart_all_list">
                           <li class="item_li">
                              <article class="item_article">
                                 <h1 class="item_list_num">1</h1>
                                 <ul class="item_page">
                                    <li class="item_page_li">
                                       <article class="item_page_article">
                                          <ul class="product_page_ul">
                                             <li class="product_page_li">
                                                <article class="product_page_article">
                                                   <div class="product_select_bt">
                                                      <div class="bt">
                                                         <input type="checkbox" class="all_select_bt">
                                                      </div>
                                                   </div>
                                                   <a class="product_content" <%-- href="상품상세페이지"--%>>
                                                      <div class="product_img">
                                                         <a href="<%=path %>/sub/Product/ProductDatail.jsp"><img src="<%=path %>/images/bowl01.jpg" width="70px"></a>
                                                      </div>
                                                      <div class="product_name">
                                                         <h1 class="product_title"></h1>
                                                      </div>
                                                   </a>
                                                   <button class="product_delete" type="button">
                                                      <svg width="12" height="12" viewBox="0 0 12 12"
                                                      fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                         <path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 
                                                         6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path>
                                                      </svg>
                                                   </button>
                                                   <ul class="product_cnt_ul">
                                                      <li class="product_cnt_li">
                                                         <article class="product_cnt_article">
                                                            <h2 class="product_cnt_name">디저트플레이트 18cm</h2>
                                                            <button class="product_cnt_delete" type="button">
                                                               <svg width="12" height="12" viewBox="0 0 12 12"
                                                                  fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                                     <path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 
                                                                     6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path>
                                                               </svg>
                                                            </button>
                                                            <div class="product_quantity_change">
                                                               <div class="quantity">
                                                                  <div class="option_count">
                                                                     <select class="count_form">
                                                                        <option value="0">1</option>
                                                                        <option value="1">2</option>
                                                                        <option value="2">3</option>
                                                                        <option value="3">4</option>
                                                                        <option value="4">5</option>
                                                                        <option value="5">6</option>
                                                                        <option value="6">7</option>
                                                                        <option value="7">8</option>
                                                                        <option value="8">9</option>
                                                                     </select>
                                                                     <%--span 생략(화살표 css) --%>
                                                                  </div>
                                                               </div>
                                                               <p class="product_quantity_price">
                                                                  <span class="price">39,900</span>원</p>
                                                            </div>
                                                         </article>
                                                      </li>
                                                   </ul>
                                                   <div class="product_option_change">
                                                      <span class="product_option">
                                                         <a href="<%=path %>/sub/Product/ProductDatail.jsp"><button class="edit_option" type="button">옵션변경</button></a>
                                                      </span>
                                                      <span class="product_subtotal">
                                                         <span class="product_subtotal_price">39,900</span>원
                                                      </span>
                                                   </div>
                                                </article>
                                             </li>
                                          </ul>
                                          
                                       </article>
                                    </li>
                                 </ul>
                              </article>
                           </li>
                        </ul>
                     </div>
                  </div>
                  <div class="cart_right">
                     <div class="total_price_container" style="position: sticky; top:81px;">
                        <div class="total_price_wrap" style="position:relative">
                           <dl class="total_price_summary">
                              <div class="summary">
                                 <dt>총 상품금액</dt>
                                 <dd>
                                    <span class="number">39,900</span>원
                                 </dd>   
                              </div>
                              <div class="summary">
                                 <dt>총 배송비</dt>
                                 <dd>+
                                    <span class="number">0</span>원
                                 </dd>   
                              </div>
                              <div class="summary">
                                 <dt>총 할인금액</dt>
                                 <dd>-
                                    <span class="number">0</span>원
                                 </dd>   
                              </div>
                              <div class="summary total">
                                 <dt>결제금액</dt>
                                 <dd>
                                    <span class="number">39,900</span>원
                                 </dd>   
                              </div>
                           </dl>
                           <div class="order">
                              <a href="payment_page.jsp"><button class="order_bt" type="button">구매하기</button></a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>
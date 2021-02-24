<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.*"
    import ="project.vo.*"
    import ="project.Dao.*"
    %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**Cart**</title>

<link type ="text/css" rel="stylesheet" href="<%=path %>/css/main_upper.css">  
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/cart.css">
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/reset.css">
</head>
<jsp:useBean id="c" class="project.vo.Customer" scope="session"/>
<jsp:setProperty property="*" name="c" />
<jsp:useBean id="pr" class="project.vo.Purchase_record" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="pr"/>
<jsp:useBean id="prod" class="project.vo.Products" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="prod"/>
<%
	//String customer_id = request.getParameter(c.getCustomer_id());
	String product_name = request.getParameter("prodname");
	String product_id = request.getParameter("prodid");
	String proc = request.getParameter("proc");
	
	String customer_id = (String)session.getAttribute("id");
	String pass = (String)session.getAttribute("pw");
	   
	   if(customer_id!=null && pass!=null){
	   		System.out.println(customer_id);
	   		System.out.println(pass);
	   }
	//customer_id = "test";
	
	cart_dao cart_dao = new cart_dao();
	ArrayList<Purchase_record> prlist =	cart_dao.getIncart(customer_id);
		
	//cart_dao.delIncart(product_name,Integer.parseInt(product_id));
	//cart_dao.delIncart(product_list.get(idx).getProduct_name(),product_list.get(idx).getProduct_Id());
	
	// 물품구매기록 테이블의 "장바구니" 상태인 컬럼 정보 가져오기 O
	// 물품 테이블의 물품 이름, 물품 인덱스 비교하여 모든 정보 가져오기
	
	
	// 메인화면에서 넘어오는 정보는 id뿐
	// id를 가지고 usebean 객체로 구매기록테이블, 구매기록테이블로 물품테이블 정보를 가져와야함
	products_dao product_dao = new products_dao();
	ArrayList<Products> product_list = new ArrayList<Products>();
	for(int i=0;i<prlist.size();i++){
		product_list.add(product_dao.getProduct(prlist.get(i).getProduct_name(),prlist.get(i).getProduct_id()));
	}
	
	// 삭제 누르면 confirm 뜨고 예 클릭 시 정보가 넘어가야함
	if(proc!=null){
		   if(proc.equals("del")){
			   cart_dao.delIncart(product_name, Integer.parseInt(product_id));
			   //System.out.println("product_name: " + product_name);
			   //System.out.println("product_id: " + Integer.parseInt(product_id));
			   response.sendRedirect("cart.jsp");
		   }
	}
	
	// path  == /project
	int total_price = 0;

%>
<script>
	   var arr = [];
	   var tmp = [];
	   window.onload = function () {
		   once();
		   
	   }
	   
	   function once(){
     		<% 
     			int[] arr = new int[prlist.size()];
     			for(int i=0;i<prlist.size();i++){ 
     				total_price += product_list.get(i).getProduct_price();
     				arr[i] = product_list.get(i).getProduct_price();
     		%>
     			arr[<%=i%>] = <%=arr[i]%>;
     			tmp[<%=i%>] = <%=arr[i]%>;
     		<%
	   		 	} 
	   		 %>
     	}
	   
	   function selectAll(selectAll){
		   const checkboxes = document.querySelectorAll('input[type="checkbox"]');
		   var i = 0;	
		   checkboxes.forEach((checkbox) => {
			   checkbox.checked = selectAll.checked;
			   bt_check(checkbox,i);
			   i++;
		   })
	   }
	   
	   function checkSelectAll(bt,index)  {
		   // 전체 체크박스
		   const checkboxes 
		     = document.querySelectorAll('input[name="select_bt"]');
		   // 선택된 체크박스
		   const checked 
		     = document.querySelectorAll('input[name="select_bt"]:checked');
		   // select all 체크박스
		   const selectAll 
		     = document.querySelector('input[name="all_select_bt"]');
		   
		   if(checkboxes.length === checked.length)  {
		     selectAll.checked = true;
		   }else {
		     selectAll.checked = false;
		   }
		   bt_check(bt,index);
		 }
	   
	   function sum(index){
		   var sum = 0;
		   arr[index] = tmp[index];
	       	for(var k=0;k<<%=prlist.size()%>;k++){
	      			sum += arr[k];
	       	}
      		var total = document.querySelector("#total_price");
      		var result = document.querySelector("#result_price");
      		total.innerHTML = sum;
      		result.innerHTML = sum;
       }
	   function minus(index){
		   
		   var sum = 0;
		   arr[index] = 0;
	       	for(var i=0;i<<%=prlist.size()%>;i++){
	      			sum += arr[i];
	       	}
	       	sum -= arr[index];
	       	
      		var total = document.querySelector("#total_price");
      		var result = document.querySelector("#result_price");
      		total.innerHTML = sum;
      		result.innerHTML = sum;
	   }
	   
	   function bt_check(bt,index){
      		if(bt.checked == true)
      			sum(index);
      		else
      			minus(index);
       }
	   
	   function update_price(index,price){
	       arr[index] = price;
	       tmp[index] = price;
	       
	       var sum = 0;
	       
	       for(var k=0;k<<%=prlist.size()%>;k++){
     			sum += arr[k];
      	   }
	       return sum;
	   }
	   
	   function del(name,index){
		   if(confirm("해당 제품을 장바구니에서 삭제하시겠습니까?")){
			   <%--cart_dao.delIncart(product_list.get(index).getProduct_name(), product_list.get(index).getProduct_name())--%>
			   console.log(name);
			   console.log(index);
			   //location.href="cart.jsp";
	   		}
	   };
	   
</script>
<body>
      <jsp:include page="../../main_upper.jsp" flush="false"/>
      	<%--
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
          --%>
          <div class="page">
      <div class="layout">
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
                                       <input type="checkbox" class="all_select_bt" name="all_select_bt" onclick="selectAll(this)" checked/>
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
                        <% for(int i=0;i<prlist.size();i++){ %>
                           <li class="item_li">
                              <article class="item_article">
                                 <h1 class="item_list_num">장바구니물품 <%=i+1 %></h1>
                                 <ul class="item_page">
                                    <li class="item_page_li">
                                       <article class="item_page_article">
                                          <ul class="product_page_ul">
                                             <li class="product_page_li">
                                                <article class="product_page_article">
                                                   <div class="product_select_bt">
                                                      <div class="bt">
                                                         <input type="checkbox" class="select_bt" name="select_bt" id="bt<%=i%>" onclick="checkSelectAll(this,<%=i%>)" checked>
                                                      </div>
                                                   </div>
                                                   <a class="product_content" <%-- href="상품상세페이지"--%>>
                                                      <div class="product_img">
                                                         <a href="<%=path %>/sub/Product/ProductDetail.jsp"><img src="<%=path %>/<%=product_list.get(i).getProduct_img_src()%>" width="70px"></a>
                                                      </div>
                                                      <div class="product_name">
                                                         <h1 class="product_title"></h1>
                                                      </div>
                                                   </a>
                                                   <button class="product_delete" type="button" id="delbt<%=i%>">
                                                   <form method="post" id="frm">
                                                   		<% System.out.println(i); 
                                                   		System.out.println(product_list.get(i).getProduct_img_src());
                                                   		%>
                                                   		<input type="hidden" name="proc" value=""/>	
                                                   		<input type="hidden" name="prodname" value="<%=product_list.get(i).getProduct_name()%>"/>
                                                   		<input type="hidden" name="prodid" value="<%=product_list.get(i).getProduct_id()%>"/>
                                                   	</form>
                                                   	<script>
                                                   	<%--
                                                   	  var delBtn = document.querySelector("#delbt<%=i%>");
	                                      		      delBtn.onclick = function(){
	                                      		    --%>
	                                      		  delbt<%=i%>.onclick = function(){
	                                      		    	  if(confirm("삭제하시겠습니까?")){
	                                      		    	  	document.querySelector("[name=proc]").value="del";
	                                      		          	document.querySelector("#frm").submit();
	                                      		    	  }
	                                      		   	  };
                                                   	</script>
                                                      <svg width="12" height="12" viewBox="0 0 12 12"
                                                      fill="currentColor" preserveAspectRatio="xMidYMid meet">
                                                         <path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 
                                                         6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path>
                                                      </svg>
                                                   </button>
                                                   <ul class="product_cnt_ul">
                                                      <li class="product_cnt_li">
                                                         <article class="product_cnt_article">
                                                            <h2 class="product_cnt_name"><%=product_list.get(i).getProduct_name() %></h2>   
                                                            <div class="product_quantity_change">
                                                               <div class="quantity">
                                                                  <div class="option_count">
                                                                     <input type="text" id="eventObj<%=i%>" value="1" style="width: 80px;padding-left: 2px;border-left-width: 2px;"/><br>
                                                                      <script>
                                                                      	eventObj<%=i%>.onblur = function(){
                                                                     		var price = <%=product_list.get(i).getProduct_price() %>;
                                                                     		var cnt = document.getElementById("eventObj<%=i%>");
                                                                     		
                                                                     		var each_total = Number(price) * Number(cnt.value);
                                                                     		
                                                                     		// if(checked){ 실행 }
                                                                     		var check = document.getElementById('bt<%=i%>').checked;
																			update_price(<%=i%>,each_total);

                                                                     		if(check){
                                                                     			bt_check(document.getElementById("bt<%=i%>"),<%=i%>);
                                                                     		}
                                                                     		
                                                                     			<%--arr[<%=i%>] = each_total;--%>

                                                                     		var each = document.querySelector("#price<%=i%>");
                                                                     		each.innerHTML = each_total;
                                                                     		
                                                                     		var product_subtotal_price = document.querySelector("#sub_price<%=i%>");
                                                                     		product_subtotal_price.innerHTML = each_total;
                                                                     	}
                                                                      	
                                                                      	
                                                                     </script>
                                                                     <%--span 생략(화살표 css) --%>
                                                                  </div>
                                                               </div>
                                                               <p class="product_quantity_price">
                                                                  <span id="price<%=i%>"><%=product_list.get(i).getProduct_price() %></span>원</p>
                                                            </div>
                                                         </article>
                                                      </li>
                                                   </ul>
                                                   <div class="product_option_change">
                                                      <span class="product_option">
                                                         <a href="<%=path %>/sub/Product/ProductDetail.jsp"><button class="edit_option" type="button">옵션변경</button></a>
                                                      </span>
                                                      <span class="product_subtotal">
                                                         <span class="product_subtotal_price" id="sub_price<%=i%>"><%=product_list.get(i).getProduct_price() %></span>원
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
                        <%} %>
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
                                    <span class="number" id="total_price"><%=total_price%></span>원
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
                                    <span class="number" id="result_price"><%=total_price%></span>원
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
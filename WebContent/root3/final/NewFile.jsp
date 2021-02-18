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
<style>
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	body, th, td, input, select, textarea, button {
    font-size: 12px;
    line-height: 1.5;
    font-family: Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
    color: #333;
}
.pagination li a, .pagination li span {
    display: block;
    height: 21px;
    padding: 4px 5px 1px 5px;
    text-align: center;
}
.pagination .on {
    color: #525c6a;
    font-weight: bold;
    border: 1px solid #323437;
}
dl, ul, ol, li {
    list-style: none;
}

.pagination li {
    display: inline-block;
    min-width: 26px;
    border: 1px solid #ffffff;
}
.pagination ul {
    padding: 20px 0 0;
    text-align: center;
}
a {
    color: #333;
    text-decoration: none;
}
</style>
<script>
   function showBig(imgSrc){ 
	   document.querySelector("#bigImage").src=imgSrc;
   }
   function calcuPrice(){
	   var cnt = document.querySelector("#num").value;
	   var show = Number(cnt)*10900;
	   document.querySelector("#result").value=show+"원";
   }
   function addCart(){
	   var price = document.querySelector("#result").value;
	   if(price<1000){
		   alert('가격 정보가 없습니다.');
	   }else{
		   alert('해당 상품이 장바구니에 추가되었습니다. 확인하시겠습니까?');
		   document.location.href="login.jsp";
	   }
   }
   function dirBuy(){
	   var id = <%=(String)session.getAttribute("id")%>
	   if(id==null){
		   alert('로그인을 하셔야 본 서비스를 이용하실 수 있습니다.');
		   document.location.href="login.jsp";
	   }else{
		   if(price<1000){
			   alert('가격 정보가 없습니다.');
		   }else{
			   document.location.href="mypage.jsp";
		   }
	   }
   }
   
</script>
<link type ="text/css" rel="stylesheet" href="../css/main_upper.css">      
<link type ="text/css" rel="stylesheet" href="../css/detail.css">      
</head>
<body>
<jsp:include page="../final/main_upper.jsp" flush="false"/>
<div class="sub_content">
	<div class="content_box">
   		<div class="location_wrap">
       		 <div class="location_cont"> 
       		 <!-- 상단에 카테고리>카테고리>... 
       		 	<ol style="list-style:none; margin:0; padding:0;">
       		 		<li style="float:left;"><a style="color:grey" href="">홈</a><span>&nbsp;&gt;&nbsp;</span></li>
       		 		<li style="float:left;"><a style="color:grey" href="">plate</a><span>&nbsp;&gt;&nbsp;</span></li>
       		 		<li style="float:left;"><a style="color:grey" href="">디저트플레이트</a></li>
       		 	</ol>
       		  --> 	
       		 </div>
       		 <br><br>
       		 <!-- //location_cont -->
       		 <br>
    	</div>
    	<!-- //location_wrap -->
    	
    	<!-- 상품 상단 -->
    	<div class="item_photo_info_sec">
        	<div class="item_photo_view_box">
            	<div class="item_photo_view">
                	<div class="item_photo_big">
                    	<span class="img_photo_big">
                    		<a href="#lyZoom" id="mainImage" class="zoom_layer_open btn_open_layer">
                    			<img src="../img/big_image.jpg" id="bigImage" width="640" height="500" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
                    		</a>
                    	</span>
                    	<a href="#lyZoom" class="btn_zoom zoom_layer_open btn_open_layer">
                    		<img src="../img/find.jpg" alt="">
                    	</a>
                	</div>
                	<div id="testZoom" style="display:none">
                		<img src="../img/big_image.jpg" width="640" height="600" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
                	</div>
                    <!-- //item_photo_big -->
                	<div class="item_photo_slide">
                    <ul class="slider_wrap slider_goods_nav slick-initialized slick-slider">
                        <div class="slick-list draggable">
                        	<div class="slick-track" style="left:100px" width="1768px" role="listbox">
                        		<!-- ::before -->
                        		<ul style="list-style:none;">
                        		<li class="slick-slide slick-cloned" style="width:84px; float:left;">
                        			<img style="cursor:pointer;" src="../img/detail_img1.jpg" onclick="showBig(this.src)" width="68" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
                        		</li>
                        		<li class="slick-slide slick-cloned" style="width: 84px; float:left;">
                        			<img style="cursor:pointer;" src="../img/detail_img2.jpg" onclick="showBig(this.src)"  width="68" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
                        		</li>
                        		<li class="slick-slide slick-cloned" style="width: 84px; float:left;">
	                        		<img style="cursor:pointer;" src="../img/detail_img3.jpg" onclick="showBig(this.src)"  width="68" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
                        		</li>
                        		<li class="slick-slide slick-cloned" style="width: 84px; float:left;">
	                        		<img style="cursor:pointer;" src="../img/detail_img4.jpg" onclick="showBig(this.src)"  width="68" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
                        		</li>
                        		<li class="slick-slide slick-cloned" style="width: 84px; float:left;">
	                        		<img style="cursor:pointer;" src="../img/detail_img5.jpg" onclick="showBig(this.src)"  width="68" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
                        		</li>
                        		</ul>
                        		<!-- ::after -->
                        	</div>
                        </div>
                    </ul>
                </div>
                <!-- //item_photo_slide -->
            </div>
            <!-- //item_photo_view -->
        </div> 
        <!-- //item_photo_view_box -->
        <div class="item_info_box">
        <div class="item_tit_detail_cont">
        	<div class="item_detail_tit">
            	<h3>[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)</h3>
            </div>
            <div class="item_detail_list">
                <dl>
                    <dt>정가</dt>
                    <dd style="margin:-2px 0 0 0;">
                        <del>
                           	<span>15,000</span>원 
                        </del>
                    </dd>
                </dl>
                <dl class="item_price">
                    <dt>판매가</dt>
                    <dd>
                        <strong><strong>10,900</strong></strong>원
                        <!-- 글로벌 참조 화폐 임시 적용 -->
                    </dd>
                </dl>
                <dl class="item_delivery">
                    <dt>배송비</dt>
                    <dd style="margin:-2px 0 0 0;">
                        <strong>3,000원</strong>
                        <input type="hidden" name="deliveryCollectFl" value="pre">
                        <strong> / 주문시결제(선결제)</strong>
                        <div class="delivery-detail">
                            <input type="hidden" name="deliveryMethodFl" value="delivery">
                            <div class="delivery-division">택배</div>
                        </div>
                    </dd>
                </dl>
                <dl>
                    <dt>원산지</dt>
                    <dd style="margin:-2px 0 0 0;">대한민국</dd>
                </dl>
                <dl class="item_discount_mileage">
                    <dt>구매혜택</dt>
                    <dd style="margin:-2px 0 0 0;">
                        <span class="item_mileage">적립 마일리지 : <strong class="total_benefit_mileage">+200원</strong> <strong class="benefit_mileage item_apply">(상품 : 200원)</strong></span>
                    </dd>
                </dl>
                <div class="item_add_option_box">
                    <table text-align="right">
                       	<tr><th><dt>컬러 선택</dt></th>
                        	<td width="400px">
                        		<select>
                        			<option>= 색상 선택 =</option>
	 								<option value="color_밀크화이트">밀크화이트</option>
	 								<option value="color_차콜그레이">차콜그레이</option>
	 								<option value="color_애쉬그레이">애쉬그레이</option>
	 								<option value="color_파우더핑크">파우더핑크</option>
	 								<option value="color_로제핑크">로제핑크</option>
                  				</select>
                   			</td>
                   		</tr>
                        <tr><th><dt>수량 입력</dt></th>
                   			<td width="400px">
                   			    <select id="num" onclick="calcuPrice()">
                   			    	<option>= 수량 선택 =</option>
	                   				<option value="1">1</option>
	 								<option value="2">2</option>
	 								<option value="3">3</option>
	 								<option value="4">4</option>
	 								<option value="5">5</option>
	 								<option value="6">6</option>
	 								<option value="7">7</option>
	 								<option value="8">8</option>
	 								<option value="9">9</option>
	 								<option value="10">10</option>
                        		</select>
                        	</td>
                        </tr>
                        <tr>
                        	<th><dt>총 금액</dt></th>
                        	<td width="400px">
                        		<input type="text" id="result" readonly="readonly">
                        	</td>
                        </tr>	
                       </table>
                </div>
                <!-- //item_add_option_box -->
            </div>
            <!-- //item_detail_list -->
                    
            <!-- 총가격 등등  -->
                    
            <div class="btn_choice_box">
				<div>
					<a href="cart.jsp"><button class="btn_add_cart" onclick="addCart()">장바구니</button></a>
					<a href="login.jsp"><button class="btn_add_wish" onclick="dirBuy()" style="background-color:black; color:white;">바로 구매</button></a>
				</div>
            </div>
            <!-- //btn_choice_box -->
        </div>
        <!-- //item_tit_detail_cont -->
    </div>
    <!-- //item_info_box -->
    <!-- ::after -->
    </div> <!-- item_photo_info_sec 끝-->
    
    <!-- //item_photo_info_sec -->
    <!-- //상품 상단 끝 -->
    <!-- 상품상세 -->
    <div class="item_goods_sec">
        <div id="detail">
            <div class="item_goods_tab">
                <ul>
                    <li class="on"><a href="#detail">상품상세정보</a></li>
                    <li><a href="#delivery">배송안내</a></li>
                    <li><a href="#exchange">교환 및 반품안내</a></li>
                    <li><a href="#reviews">상품후기 <strong>(1)</strong></a></li>
                    <li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
                </ul>
            </div>
            <!-- //item_goods_tab -->
            <div class="detail_cont">           
                <div class="detail_explain_box">
                    <div class="image-manual"><!-- 이미지 --></div>
                    <div class="txt-manual">
                        <!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
                        <div align="center">
                        	<br>
                        	<img src="http://bowl12.godohosting.com/page/A/a/a/Aaa200916_03_01.jpg" border="0">
                        	<br>
                        	<img src="http://bowl12.godohosting.com/page/A/a/a/Aaa200916_03_02.jpg" border="0">
                        	<br>
                        	<img src="http://bowl12.godohosting.com/page/A/a/a/Aaa200916_03_03.jpg" border="0">
                        	<br><br><br><br><br>
                        	<img src="http://bowl12.godohosting.com/page/Manufacturer_03.jpg" border="0">
                        	<br>
                        	<img src="http://bowl12.godohosting.com/page/customer_center_01.jpg" border="0">
                        	<br>
                        </div>
                    </div>
                </div>
                <!-- //detail_explain_box -->
                <h3>상품필수 정보</h3>
                <div class="detail_info_box">
                    <div class="datail_table">
                        <table class="left_table_type">
                            <colgroup>
                                <col>
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th style="width:20%">품명 및 모델명</th>
                                <td colspan="3" style="width:80%">볼볼홈파티 디저트플레이트 18cm (5color)</td>
                            </tr>
                            <tr>
                                <th style="width:20%">제조사(수입자/병행수입)</th>
                                <td colspan="3" style="width:80%">보울보울</td>
                            </tr>
                            <tr>
                                <th style="width:20%">제조국</th>
                                <td colspan="3" style="width:80%">대한민국</td>
                            </tr>
                            <tr>
                                <th style="width:20%">품질보증기준</th>
                                <td colspan="3" style="width:80%">관련법 및 소비자 분쟁해결 규정에 따름</td>
                            </tr>
                            <tr>
                                <th style="width:20%">A/S 책임자와 전화번호</th>
                                <td colspan="3" style="width:80%">보울보울CS센터/070-4616-9441</td>
                            </tr>
                            <tr>
                                <th style="width:20%">제품 구성</th>
                                <td colspan="3" style="width:80%">디저트플레이트 1개</td>
                            </tr>
                            <tr>
                                <th style="width:20%">크기,무게</th>
                                <td colspan="3" style="width:80%">상세페이지 참조</td>
                            </tr>
                            <tr>
                                <th style="width:20%">동일모델 출시년월</th>
                                <td colspan="3" style="width:80%">2020.09</td>
                            </tr>
                            <tr>
                                <th style="width:20%">재질</th>
                                <td colspan="3" style="width:80%">도자기</td>
                            </tr>
                            <tr>
                                <th style="width:20%">수입여부</th>
                                <td colspan="3" style="width:80%">해당사항없음</td>
                            </tr>
                            <tr>
                                <th style="width:20%">식품위생법에 따른 수입기구/용기 여부</th>
                                <td colspan="3" style="width:80%">해당사항없음</td>
                            </tr>
                            <tr>
                                <th style="width:20%">취급시 주의사항</th>
                                <td colspan="3" style="width:80%">파손주의</td>
                            </tr>
                            <tr>
                                <th style="width:20%">KC안전인증 대상 유무</th>
                                <td colspan="3" style="width:80%">해당사항없음</td>
                            </tr>
                            <tr>
                                <th style="width:20%">안전인증번호</th>
                                <td colspan="3" style="width:80%">해당사항없음</td>
                            </tr>
                            <tr>
                                <th style="width:20%">보관방법 또는 취급방법</th>
                                <td colspan="3" style="width:80%">파손주의</td>
                            </tr>
                            <tr>
                                <th style="width:20%">제조연월일(포장일 또는 생산연도) / 유통기한</th>
                                <td colspan="3" style="width:80%">2020.09.10</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- //detail_info_box -->
            </div>
            <!-- //detail_cont -->
        </div>
        <!-- //#detail -->
        <div id="delivery">
            <div class="item_goods_tab">
                <ul>
                    <li><a href="#detail">상품상세정보</a></li>
                    <li class="on"><a href="#delivery">배송안내</a></li>
                    <li><a href="#exchange">교환 및 반품안내</a></li>
                    <li><a href="#reviews">상품후기 <strong>(1)</strong></a></li>
                    <li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
                </ul>
            </div>
            <!-- //item_goods_tab -->
            <div class="delivery_cont">
                <h3>배송안내</h3>
                <div class="admin_msg">
                	<p>- 배송비&nbsp;:&nbsp;기본배송료는 3,000원&nbsp;입니다.&nbsp;(도서,산간,오지&nbsp;일부지역은&nbsp;배송비가&nbsp;추가될&nbsp;수&nbsp;있습니다)&nbsp; 30,000원&nbsp;이상&nbsp;구매시&nbsp;무료배송입니다.</p>
                	<p>- 본&nbsp;상품의&nbsp;평균&nbsp;배송일은&nbsp;0일입니다.(입금&nbsp;확인&nbsp;후)&nbsp;설치&nbsp;상품의&nbsp;경우&nbsp;다소&nbsp;늦어질수&nbsp;있습니다.[배송예정일은&nbsp;주문시점(주문순서)에&nbsp;따른&nbsp;유동성이&nbsp;발생하므로&nbsp;평균&nbsp;배송일과는&nbsp;차이가&nbsp;발생할&nbsp;수&nbsp;있습니다.]</p>
                	<p>- 본&nbsp;상품의&nbsp;배송&nbsp;가능일은&nbsp;0일&nbsp;입니다.&nbsp;배송&nbsp;가능일이란&nbsp;본&nbsp;상품을&nbsp;주문&nbsp;하신&nbsp;고객님들께&nbsp;상품&nbsp;배송이&nbsp;가능한&nbsp;기간을&nbsp;의미합니다.&nbsp;(단,&nbsp;연휴&nbsp;및&nbsp;공휴일은&nbsp;기간&nbsp;계산시&nbsp;제외하며&nbsp;현금&nbsp;주문일&nbsp;경우&nbsp;입금일&nbsp;기준&nbsp;입니다.)</p>
                </div>
            </div>
            <!-- //delivery_cont -->
        </div>
        <!-- //#delivery -->
        <div id="exchange">
            <div class="item_goods_tab">
                <ul>
                    <li><a href="#detail">상품상세정보</a></li>
                    <li><a href="#delivery">배송안내</a></li>
                    <li class="on"><a href="#exchange">교환 및 반품안내</a></li>
                    <li><a href="#reviews">상품후기 <strong>(1)</strong></a></li>
                    <li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
                </ul>
            </div>
            <!-- //item_goods_tab -->
            <div class="exchange_cont">
                <h3>교환 및 반품안내</h3>
                <div class="admin_msg">
                    <p>- 상품&nbsp;택(tag)제거&nbsp;또는&nbsp;개봉으로&nbsp;상품&nbsp;가치&nbsp;훼손&nbsp;시에는&nbsp;상품수령후&nbsp;7일&nbsp;이내라도&nbsp;교환&nbsp;및&nbsp;반품이&nbsp;불가능합니다.</p>
                    <p>- 저단가&nbsp;상품,&nbsp;일부&nbsp;특가&nbsp;상품은&nbsp;고객&nbsp;변심에&nbsp;의한&nbsp;교환,&nbsp;반품은&nbsp;고객께서&nbsp;배송비를&nbsp;부담하셔야&nbsp;합니다(제품의&nbsp;하자,배송오류는&nbsp;제외)</p>
                    <p>- 일부&nbsp;상품은&nbsp;신모델&nbsp;출시,&nbsp;부품가격&nbsp;변동&nbsp;등&nbsp;제조사&nbsp;사정으로&nbsp;가격이&nbsp;변동될&nbsp;수&nbsp;있습니다.</p>
                    <p>- 일부&nbsp;특가&nbsp;상품의&nbsp;경우,&nbsp;인수&nbsp;후에는&nbsp;제품&nbsp;하자나&nbsp;오배송의&nbsp;경우를&nbsp;제외한&nbsp;고객님의&nbsp;단순변심에&nbsp;의한&nbsp;교환,&nbsp;반품이&nbsp;불가능할&nbsp;수&nbsp;있사오니,&nbsp;각&nbsp;상품의&nbsp;상품상세정보를&nbsp;꼭&nbsp;참조하십시오.&nbsp;</p>
                </div>
                <h3>환불안내</h3>
                <div class="admin_msg">
                    - 상품 청약철회 가능기간은 상품 수령일로 부터 7일 이내 입니다.
                </div>
                <h3>AS안내</h3>
                <div class="admin_msg">
                    <p>- 소비자분쟁해결 기준(공정거래위원회 고시)에 따라 피해를 보상받을 수 있습니다.</p><p>- A/S는 판매자에게 문의하시기 바랍니다.</p>
                </div>
            </div>
            <!-- //exchange_cont -->
        </div>
        <!-- //#exchange -->
        <div id="reviews">
            <div class="item_goods_tab">
                <ul>
                    <li><a href="#detail">상품상세정보</a></li>
                    <li><a href="#delivery">배송안내</a></li>
                    <li><a href="#exchange">교환 및 반품안내</a></li>
                    <li class="on"><a href="#reviews">상품후기 <strong>(1)</strong></a></li>
                    <li><a href="#qna">상품문의 <strong>(0)</strong></a></li>
                </ul>
            </div>
            <!-- //item_goods_tab -->
            <div class="reviews_cont">
                <h3>상품후기</h3>
                <div id="ajax-goods-goodsreview-list">
                	<div class="reviews_table">
    					<table class="reviews_table_type">
        					<colgroup>
					            <col width="13%">
					            <col>
					            <col width="13%">
					            <col width="13%">
					        </colgroup>
					        <thead>
					            <tr>
					                <th>평점</th>
					                <th>제목</th>
					                <th>작성자</th>
					                <th>작성일</th>
					            </tr>
					        </thead>
					        <tbody>
					            <tr class="js_data_row" data-bdid="goodsreview" data-sno="1416" data-auth="y" data-notice="n">
					                <td><img src="../img/별5.jpg"></td>
					                <td class="board_tit">
					                    <a class="js_btn_view " id="que-1">         
					                        <strong style="cursor:pointer;">조금 작은 사이즈를 생각하고 주문했는데 생각한것보다는 살짝컸지만 오히려 그래서 음식담기 편한느낌이네...</strong>
					                        <span class="js_comment_count">(1)</span>
					                    </a><br>
					                    <div class="answer" id="ans-1" style="display:none; background-color:#ededed;" >
					                    	<br>
					                    	조금 작은 사이즈를 생각하고 주문했는데 생각한것보다는 살짝컸지만 
					                    	오히려 그래서 음식담기 편한느낌이네요. 깔끔하고 좋아요.<br>
					                    	<br>
					                    	<img src="../img/review.jpg" width="300"><br><br>
					                    </div>
					                </td>
					                <td>홈페이지 구매자</td>
					                <td>2020.12.01</td>
					            </tr>
					            <tr class="js_detail" data-bdid="goodsreview" data-sno="1416" data-auth="y" data-notice="n"></tr>
					        </tbody>
					    </table>
					</div>
					<div class="pagination">
						<ul>
							<li class="on">
								<span>1</span>
							</li>
						</ul>
					</div>
				</div>
				<div class="btn_reviews_box">
					<a href="../board/list.php?bdId=goodsreview" class="btn_reviews_more">상품후기 전체보기</a>
					<a href="goodsReview.jsp" class="btn_reviews_write">상품후기 글쓰기</a>
				</div>
				<!-- //btn_reviews_box -->
			</div>
			<!-- //reviews_cont -->
		</div>
		<!-- //#reviews -->
		<div id="qna">
			<div class="item_goods_tab">
				<ul>
					<li><a href="#detail">상품상세정보</a></li>
					<li><a href="#delivery">배송안내</a></li>
					<li><a href="#exchange">교환 및 반품안내</a></li>
					<li><a href="#reviews">상품후기 <strong>(1)</strong></a></li>
					<li class="on"><a href="#qna">상품문의 <strong>(0)</strong></a></li>
				</ul>
			</div>
			<!-- //item_goods_tab -->
			<div class="qna_cont">
				<h3>상품Q&amp;A</h3>
				<div id="ajax-goods-goodsqa-list"><div class="qna_table">
					<table class="qna_table_type">
					    <colgroup>
					        <col width="5%">
					        <col>
					        <col width="13%">
					        <col width="13%">
					        <col width="13%">
					    </colgroup>
					    <thead>
					        <tr>
					            <th>번호</th>
					            <th>제목</th>
					            <th>작성자</th>
					            <th>작성일</th>
					            <th>진행상황</th>
					        </tr>
					    </thead>
					    <tbody>
					        <tr>
					            <td class="no_data" colspan="5">등록된 상품문의가 없습니다.</td>
					        </tr>
					    </tbody>
					</table>
				</div>
				<div class="pagination">
					<ul></ul>
				</div>
			</div>
			<div class="btn_qna_box">
				<a href="customer.jsp" class="btn_qna_more">상품문의 전체보기</a>
				<a href="goodsQuestion.jsp" class="btn_qna_write">상품문의 글쓰기</a>
			</div>
			<!-- //btn_qna_box -->
		</div>
		<!-- //qna_cont -->
	</div>
	<!-- //qna -->
</div>
<!-- //item_goods_sec -->
<!-- //상품상세 끝 -->
</div>
</div>
</body>
<script>
const items = document.querySelectorAll('.js_btn_view');

function openCloseAnswer() {
  const answerId = this.id.replace('que', 'ans');

  if(document.getElementById(answerId).style.display == 'block') {
    document.getElementById(answerId).style.display = 'none';
  } else {
    document.getElementById(answerId).style.display = 'block';
  }
}

items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
</html>
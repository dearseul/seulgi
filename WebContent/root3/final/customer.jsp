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
<link type ="text/css" rel="stylesheet" href="../css/cssAll.css">
<style>

	.sub_content {
    padding: 45px 0 0 0;
    overflow:visible;
}
#container {
    margin-top: -1px;
    border-top: 1px solid #cccccc;
}
#contents {
    min-height: 400px;
    padding: 0;
}
.location_wrap {
    position: relative;
    width: 100%;
    border-bottom: 1px solid #ededed;
    /* background: #f9f9f9; */
}
.sub_content {
    padding: 45px 0 0 0;
}
.gnb, .header_top_cont, .header_search_cont, .main_goods_cont, .sub_content, .content_info, .foot_cont, .foot_certify {
    position: relative;
    width: 1200px;
    margin: 0 auto;
}
.sub_content .side_cont {
    float: left;
    width: 200px;
}
.side_cont .sub_menu_box {
    min-height: 250px;
    padding: 0 0 50px 0;
}
.side_cont .sub_menu_box .sub_menu {
    margin: 7px 0 0 0;
}
dl, ul, ol, li {
    list-style: none;
}
.side_cont .info_box {
    padding: 0 0 0 10px;
}
#contents .sub_content > .side_cont + .content {
    float: left;
    width: 960px;
    padding: 0 0 0 40px;
}
</style>
<script>
   window.onload=function(){
      
   };
</script>
<link type ="text/css" rel="stylesheet" href="../css/detail.css">  
<link type ="text/css" rel="stylesheet" href="../css/main_upper.css">  
  
</head>
<body class="body-service body-index pc">
<jsp:include page="main_upper.jsp" flush="false"/>
<div id="wrap" style="margin-left: -105px;">
    <div id="container">
        <div id="contents">
        <!-- 본문 시작 
            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> &gt; 고객센터</em>
                </div>
            </div>
            -->
            <!-- //location_wrap -->
            <div class="sub_content">
                <div class="side_cont">
					<div class="sub_menu_box">
    					<h2>고객센터</h2>
    					<ul class="sub_menu">
							<li>
								<a href="oneQuestion.jsp">1:1문의하기</a>
							</li>        
							<li>
								<a href="customer.jsp">FAQ</a>
							</li>
    					</ul>
					</div>
					<!-- //sub_menu_box -->
					<div class="info_box">
    					<dl>
        					<dt>고객상담센터</dt>
       					 	<dd>
            					<strong class="info_num">070-4616-9441</strong>
            					<br>
            					<a href="mailto:service@bowlbowl.co.kr" class="info_mail_link">service@bowlbowl.co.kr</a>
								<p>
									OPEN : AM 09:30 ~ PM 05:00<br>
									LUNCH : PM 12:00 ~ PM 01:30<br>
									Sat, Sun, Holiday OFF<br>
									휴일은 1:1게시판을 이용해주세요
								</p>
        					</dd>
    					</dl>
    					<dl>
        					<dt>은행계좌 안내</dt>
        					<dd>
            					<strong class="info_num">0000-000-0000</strong>
            					<p>
                					<em>우리은행</em> <br>
                					<span>[예금주 : 홍길동]</span>
            					</p>
        					</dd>
    					</dl>
					</div>
					<!-- //info_box -->
                </div>
                <!-- //side_cont -->
				<div class="content">
    				<div class="service_main">
        				<div class="board_zone_sec">
            				<div class="board_zone_cont">
                				<div class="board_zone_list">
                    				<iframe src="customIframe.jsp" id="faqIframe" width="100%" height="901" marginwidth="0" marginheight="0" frameborder="no" scrolling="no">
                    				</iframe>
                				</div>
                				<!-- //board_zone_list -->
            				</div>
            				<!-- //board_zone_cont -->
        				</div>
        				<!-- //board_zone_sec -->
    				</div>
				</div>
			</div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->
</div>
<!-- //wrap -->
<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src="/blank.php" style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->
</body>
</html>






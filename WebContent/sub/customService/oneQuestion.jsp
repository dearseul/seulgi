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
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/cssAll.css">   
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/main_upper.css">  

<style>
#contents{
	padding:0;	
}
</style>
<script>
	
</script>
</head>
<body class="body-service body-qa pc">
<jsp:include page="/main_upper.jsp" flush="false"/>
<div class="top_area"></div>
<div id="wrap" style="margin-left: -105px;">
    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> &gt; 1:1문의하기</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <div class="side_cont">
<div class="sub_menu_box">
    <h2>고객센터</h2>
    <ul class="sub_menu">
<li><a href="oneQuestion.jsp" class="active">1:1문의하기</a></li>        
<li><a href="customer.jsp">FAQ</a></li>
    </ul>
</div>
<!-- //sub_menu_box -->
<div class="info_box">
    <dl>
        <dt>고객상담센터</dt>
        <dd>
            <strong class="info_num">070-4616-9441</strong><br>
            <a href="mailto:service@bowlbowl.co.kr" class="info_mail_link">service@bowlbowl.co.kr</a>
            <p>OPEN : AM 09:30 ~ PM 05:00<br>
LUNCH : PM 12:00 ~ PM 01:30<br>
Sat, Sun, Holiday OFF<br>
휴일은 1:1게시판을 이용해주세요</p>
        </dd>
    </dl>
    <dl>
        <dt>은행계좌 안내</dt>
        <dd>
            <strong class="info_num">1005-603-222155</strong>
            <p>
                <em>우리은행</em> <br>
                <span>[예금주 : 주식회사보울보울]</span>
            </p>

        </dd>
    </dl>
</div>
<!-- //info_box -->
<script type="text/javascript">
    // 메뉴 선택
    $('.sub_menu li > a[href*="' + document.location.pathname + '"]').addClass('active');
</script>
                </div>
                <!-- //side_cont -->
<div class="content">
    <iframe src="oneQuestionIframe.jsp" name="ifrmBoard" width="100%" height="1157" marginwidth="0" marginheight="0" frameborder="no" scrolling="no" onload="gd_resize_frame(this)"></iframe>
</div>
            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->
</div>
<!-- //wrap -->
</body>
</html>
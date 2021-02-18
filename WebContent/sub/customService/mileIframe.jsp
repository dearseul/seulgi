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
<link type ="text/css" rel="stylesheet" href="../css/cssAll.css">   
<style>
	.btnView{cursor:pointer;}
</style>
<script>

	
</script>
</head>
<body class="body-service body-faq pc">
<div class="content">
    <div class="board_zone_sec">
        <div class="board_zone_cont">
            <div class="board_zone_list index">
                <div class="date_check_box">
                    <form name="frmList" id="frmList" action="faq.php" method="get">
                        <input type="hidden" name="noheader" value="y">
                        <div class="date_faq_list">
                                <h2>자주묻는 질문 검색</h2>
                                <input type="hidden" name="searchField" value="all">
                                <input type="text" id="time" name="searchWord" class="text" placeholder="검색어를 입력하세요">
                                <button type="submit" class="btn_date_check"><em>검색</em></button>
                        </div>
                        <div class="date_faq_txt">
                            <p>
                                <strong>찾으시는 질문이 없다면?</strong>
                                <span class="btn_gray_list"><a href="qa.php" class="btn_gray_mid" target="_top"><span>1:1 문의하기</span></a></span>
                            </p>
                        </div>
                    </form>
                </div>
                <!-- //date_check_box -->

                <div class="board_zone_tit">
                    <h3>BEST FAQ</h3>

                </div>
                <div class="board_list_faq">
                    <div class="board_hot_list">
                        <ul>
                            <li><a href="customIframe.jsp"><span>전체</span></a></li>
                            <li><a href="cutInfoIframe.jsp"><span>회원가입/정보</span></a></li>
                            <li><a href="deliveryIframe.jsp"><span>결제/배송</span></a></li>
                            <li><a href="refundIframe.jsp"><span>교환/반품/환불</span></a></li>
                            <li class="on"><a href="mileIframe.jsp"><span>마일리지 적립</span></a></li>
                        </ul>
                    </div>
                    <table id="faqList" class="board_list_table">
                        <colgroup>
                            <col style="width:67px">
                            <col style="width:144px">
                            <col>
                        </colgroup>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>분류</th>
                                <th>내용</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="toggle_faq" data-sno="6">
                                <td>6</td>
                                <td>마일리지 적립</td>
                                <td class="board_tit">
                                    <span class="icon_qan"><img src="../img/findSmall.jpg" alt="질문제목"></span>
                                    <strong class="btnView" id="que-5">마일리지는 어떻게 사용하나요?</strong>
                                    <div class="answer" id="ans-5" style="display:none;">
                                    	<br>
                                    	- 마일리지 100점은 현금 100원과 같이 사용 가능합니다.
                                    </div>                                              
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="faq.php" target="_top" class="btn_board_more">+ 더보기</a>
                </div>
                <!-- //board_list_faq -->
                <div class="pagination"><ul><li class="on"><span>1</span></li></ul></div>
            </div>
            <!-- //board_zone_list -->
        </div>
        <!-- //board_zone_cont -->
    </div>
    <!-- //board_zone_sec -->
</div>
<!-- //content -->


<script>
const items = document.querySelectorAll('.btnView');

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


</body>
</html>
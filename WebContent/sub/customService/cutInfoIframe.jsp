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
                            <li class="on"><a href="cutInfoIframe.jsp"><span>회원가입/정보</span></a></li>
                            <li><a href="deliveryIframe.jsp"><span>결제/배송</span></a></li>
                            <li><a href="refundIframe.jsp"><span>교환/반품/환불</span></a></li>
                            <li><a href="mileIframe.jsp"><span>마일리지 적립</span></a></li>
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
                            <tr class="toggle_faq" data-sno="5">
                                <td>5</td>
                                <td>회원가입/정보</td>
                                <td class="board_tit">
                                        <span class="icon_qan"><img src="../img/findSmall.jpg" alt="질문제목"></span>
                                        <strong class="btnView" id="que-6">회원 가입해야만 상품을 구매 할 수 있나요?</strong>
                                    <div class="answer" id="ans-6" style="display:none;">
                                    	<br>
                                    	회원가입을 하지 않으셔도 <b>비회원주문이 가능합니다.</b>
                                    	<br>
                                    	<b>단, 비회원으로 주문하시면 포인트는 적립되지 않습니다. </b>
                                    </div>        
                                </td>
                            </tr>
                            <tr class="toggle_faq" data-sno="4">
                                <td>4</td>
                                <td>회원가입/정보</td>
                                <td class="board_tit">
                                    <span class="icon_qan"><img src="../img/findSmall.jpg" alt="질문제목"></span>
                                    <strong class="btnView" id="que-7">회원정보변경은 어떻게 하나요?</strong>
                                    <div class="answer" id="ans-7" style="display:none;">
                                    	<br>
                                    	회원정보 수정을 원하시면 로그인 후<br>
                                    	<b>마이페이지>내정보 수정</b> 페이지에서<br>
                                    	정보를 수정하실 수 있습니다.
                                    </div>   
                                </td>
                            </tr>
                            <tr class="toggle_faq" data-sno="3">
                                <td>3</td>
                                <td>회원가입/정보</td>
                                <td class="board_tit">
                                    <span class="icon_qan"><img src="../img/findSmall.jpg" alt="질문제목"></span>
                                    <strong class="btnView" id="que-8">ID와 비밀번호 잊었을 땐 어떻게 하나요?</strong>
                                    <div class="answer" id="ans-8" style="display:none;">
                                    	<br>
                                    	<b>- ID를 잊었을 경우</b><br>
                                    	로그인 페이지에 있는 아이디찾기 버튼을 클릭하신 후<br>
                                    	각 항목을 기입하시면 ID를 확인하실 수 있습니다.
                                    	<br><br>
                                    	<b>- 비밀번호를 잊었을 경우</b><br>
                                    	로그인 페이지에 있는 비밀번호찾기 버튼을 클릭하신 후<br>
                                    	id를 확인하시고 인증수단 선택 후 <br>
                                    	새로운 비밀번호를 입력하시면 됩니다. 
                                    </div>  
                                </td>
                            </tr>
                            <tr class="toggle_faq" data-sno="2">
                                <td>2</td>
                                <td>회원가입/정보</td>
                                <td class="board_tit">
                                    <span class="icon_qan"><img src="../img/findSmall.jpg" alt="질문제목"></span>
                                    <strong class="btnView" id="que-9">​회원 탈퇴는 어떻게 하나요?</strong>
                                    <div class="answer" id="ans-9" style="display:none;">
                                    	<br>
                                    	마이페이지에서 <b>회원정보>회원탈퇴</b> 버튼을 클릭하시고<br>
                                    	각 항목을 기입하신 후 탈퇴버튼을 클릭하시면 됩니다.
                                    </div>  
                                </td>
                            </tr>
                            <tr class="toggle_faq" data-sno="1">
                                <td>1</td>
                                <td>회원가입/정보</td>
                                <td class="board_tit">
                                    <span class="icon_qan"><img src="../img/findSmall.jpg" alt="질문제목"></span>
                                    <strong class="btnView" id="que-10">회원가입은 어떻게 하나요?</strong>
                                    <div class="answer" id="ans-10" style="display:none;">
                                    	<br>
                                    	회원가입은 우측 상단의 회원가입 버튼을 클릭하신 후 <br>
                                    	기입항목을 기입함으로써 회원에 가입하실 수 있습니다.
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
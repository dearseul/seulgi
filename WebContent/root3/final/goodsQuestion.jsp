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
</style>

<script>
   window.onload=function(){
      
   };
   function star() {
	     var frm = document.all;
	     var radio_num = document.all.radio.length;
	     var chk_i = 0;
	     for(var i=0; i<radio_num; i++){
	          if(frm.radio[i].checked == true){
	                 chk_i++;
	                 break;
	          }
	     }	 
	     if(chk_i <= 0){
	          alert("평점을 선택하세요.");
	          return;
	     }else if(!frm.writerNm.value){
	    	 alert('작성자명을 입력하세요.');
	     }else if(!frm.writerPw.value){
	    	 alert('비밀번호를 입력하세요.');
	     }
	} 
</script>
<link type ="text/css" rel="stylesheet" href="../css/goodsReview.css">   
</head>
<body class="body-board body-popup-goods-board-write pc">
<div class="board_write_popup">
    <div class="ly_tit"><h4>1:1 문의 쓰기</h4></div>
    <div class="ly_cont">
        <form name="frmWrite" id="frmWrite" method="post" enctype="multipart/form-data" novalidate="novalidate">
            <input type="hidden" name="gboard" value="y">
            <input type="hidden" name="windowType" value="popup">
            <input type="hidden" name="bdId" value="goodsreview">
            <input type="hidden" name="sno" value="">
            <input type="hidden" name="mode" value="write">
            <input type="hidden" name="goodsNo" value="1000001106">
            <input type="hidden" name="returnUrl" value="bdId=goodsreview&amp;goodsNo=1000001106&amp;orderGoodsNo=0">

            <div class="scroll_box">
                <div class="top_item_photo_info">
                    <div class="item_photo_box">
                        <img src="../img/detail_img1.jpg" width="640" height="500" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
                    </div>
                    <!-- //item_photo_view -->
                    <div class="item_info_box">
                        <h5>[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)</h5>
                    </div>
                </div>
                <!-- //top_item_photo_info -->
                <div class="board_write_box">
                    <table class="board_write_table">
                        <colgroup>
                            <col style="width:15%">
                            <col style="width:85%">
                        </colgroup>
                        <tbody>
                        <tr>
                        	<th scope="row">말머리</th>
                        	<td>
                        		<select>
                        			<option>상품</option>
                        			<option>배송</option>
                        			<option>오배송</option>
                        			<option>반품/환불</option>
                        			<option>교환/변경</option>
                        			<option>기타</option>
                        		</select>
                        	</td>
                        </tr>
                        <tr>
                            <th scope="row">작성자<strong style="color:red; font-size:small;">&nbsp;(필수)</strong></th>
                            <td>
                                <input type="text" name="writerNm" title="작성자 입력">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">비밀번호<strong style="color:red; font-size:small;">&nbsp;(필수)</strong></th>
                            <td>
                                <input type="password" name="writerPw" title="비밀번호 입력">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">제목<strong style="color:red; font-size:small;">&nbsp;(필수)</strong></th>
                            <td>
                                <input type="text" name="subject" class="write_title" placeholder="제목 입력" value="">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">내용<strong style="color:red; font-size:small;">&nbsp;(필수)</strong></th>
                            <td class="wirte_editor">
                                <textarea title="내용 입력" id="editor" style="width: 100%; height:200px; min-width: 400px;" name="contents" cols="50" rows="3"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">파일</th>
                            <td id="uploadBox">
                                <div class="file_upload_sec">
                                    <label for="attach1"><input type="text" class="file_text" title="파일 첨부하기" readonly="readonly"></label>
                                    <div class="btn_upload_box">
                                        <button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
                                        <input type="file" id="attach1" name="upfiles[]" class="file" title="찾아보기">
                                        <span class="btn_gray_list">
                                        <button type="button" id="addUploadBtn" class="btn_gray_big"><span>+ 추가</span></button></span>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- //board_wirte_box -->
                <div class="board_wirte_agree">
                    <div class="board_commen_agree">
                        <div class="form_element">
                            
                        </div>
                    </div>
                    <!-- //board_commen_agree -->
                </div>
                <!-- //board_wirte_agree -->
            </div>
            <!-- //scroll_box -->
        </form>
        <div class="btn_center_box">
            <a href="javascript:window.close()"><button class="btn_ly_cancel"><strong>취소</strong></button></a>
            <a href="javascript:save()" onclick="star()" class="btn_ly_write_ok"><button><strong>등록</strong></button></a>
        </div>
    </div>
    <!-- //ly_cont -->
</div>
</body>
</html>
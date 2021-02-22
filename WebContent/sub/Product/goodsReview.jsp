<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"
    import="project.vo_join.*"
    import="project.dao_review.*"
    %>
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
	     }
	} 
</script>
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/goodsReview.css">   
</head>

<%
String customer_id = request.getParameter("customer_id");
if(customer_id==null) customer_id="";
String re_gradeS = request.getParameter("re_grade");
int re_grade=0;
if(re_gradeS!=null&&!re_gradeS.equals("")){
	re_grade=Integer.parseInt(re_gradeS);}
String re_title = request.getParameter("re_title");
if(re_title==null) re_title="";
String re_content = request.getParameter("re_content");
if(re_content==null) re_content="";
log("작성자:"+customer_id);
log("등급:"+re_grade);
log("제목:"+re_title);
log("내용:"+re_content);
//String customer_id, int re_id, String re_title, String re_content, int re_grade, String re_date_s,
//			int product_id, String product_name
if(!customer_id.equals("")){
	Review ins = new Review(customer_id,0,re_title,re_content,re_grade,new String(""),0,new String("그릇1"));
	
	log("입력내용 확인:"+ins.getCustomer_id());
	DAO_review dao = new DAO_review();
	dao.insertReview(ins);
}
%>

<body class="body-board body-popup-goods-board-write pc">
<form method="post">
<div class="board_write_popup">
    <div class="ly_tit"><h4>상품후기 쓰기</h4></div>
    <div class="ly_cont">
            <div class="scroll_box">
                <div class="top_item_photo_info">
                    <div class="item_photo_box">
                        <img src="<%=path%>/images/detail_img1.jpg" width="640" height="500" alt="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" title="[신제품] 볼볼홈파티 디저트플레이트 18cm (5color)" class="middle">
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
                            <th scope="row">작성자<strong style="color:red; font-size:small;">&nbsp;(필수)</strong></th>
                            <td>
                                <input type="text" name="customer_id" value="<%=customer_id %>" title="작성자 입력">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">평가<strong style="color:red; font-size:small;">&nbsp;(1~5 입력 가능)</strong></th>
                            <td>
                            	<input type="text" name="re_grade" value="<%=re_grade %>">
<!--                                 <div class="form_element">
                                    <ul class="rating_star_list">
                                        <li>
                                            ★★★★★ <input type="radio" id="rating5" name="radio" value="5">
                                            &nbsp; &nbsp;
                                        </li>                                       
                                        <li>
                                            ★★★★☆ <input type="radio" id="rating4" name="radio" value="4">
                                            &nbsp; &nbsp;
                                        </li>
                                        <li>
                                            ★★★☆☆ <input type="radio" id="rating3" name="radio" value="3">
                                             &nbsp; &nbsp;
                                        </li>
                                        <li>                                            
                                            ★★☆☆☆ <input type="radio" id="rating2" name="radio" value="2">
                                             &nbsp; &nbsp;
                                        </li>
                                        <li>
                                            ★☆☆☆☆ <input type="radio" id="rating1" name="radio" value="1">
                                             &nbsp; &nbsp;
                                        </li>
                                    </ul>
                                </div> -->
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">제목</th>
                            <td>
                                <input type="text" name="re_title" class="re_title" placeholder="제목 입력"  value="<%=re_title %>">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">내용</th>
                            <td class="wirte_editor">
                                <textarea title="내용 입력" id="editor" style="width: 100%; height:200px; min-width: 400px;" name="re_content" cols="50" rows="3">
                                <%=re_title %>
                                </textarea>
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
        <div class="btn_center_box">
            <a href="javascript:window.close()"><button class="btn_ly_cancel"><strong>취소</strong></button></a>
            <a><input type="submit" value="등록"/></a>
        </div>
    </div>
    <!-- //ly_cont -->
</div>
</form>
</body>
</html>
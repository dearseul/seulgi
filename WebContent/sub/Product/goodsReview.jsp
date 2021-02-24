<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"
    import="project.vo_review.*"
    import="project.dao_review.*"
    import="project.vo_review.*"
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
String review_satisfiedS = request.getParameter("review_satisfied");
int review_satisfied=0;
if(review_satisfiedS!=null&&!review_satisfiedS.equals("")){
	review_satisfied=Integer.parseInt(review_satisfiedS);}
String review_title = request.getParameter("review_title");
if(review_title==null) review_title="";
String review_content = request.getParameter("review_content");
if(review_content==null) review_content="";
String review_written_date_s=request.getParameter("review_written_date_s");
if(review_written_date_s==null) review_written_date_s="";
log("작성자:"+customer_id);
log("등급:"+review_satisfied);
log("제목:"+review_title);
log("내용:"+review_content);
log("날짜:"+review_written_date_s);
if(!customer_id.equals("")){
	Review ins = new Review(customer_id,0,review_title,review_content,review_satisfied,
			"",review_written_date_s,0,1099,"스텐그릇");
	log("입력내용 확인:"+ins.getCustomer_id());
	DAO_review dao = new DAO_review();
	dao.insertReview(ins);
}

%>

<body class="body-board body-popup-goods-board-write pc">
<form method="post">
<input type="hidden" name="review_written_date_s" value="<%=review_written_date_s %>" >
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
<%--                         <tr>
                            <th scope="row">비밀번호<strong style="color:red; font-size:small;">&nbsp;(필수)</strong></th>
                            <td>
                                <input type="text" name="re_pass" value="<%=re_pass %>" title="작성자 입력">
                            </td>
                        </tr>   --%>                      
                        <tr>
                            <th scope="row">평가<strong style="color:red; font-size:small;">&nbsp;(1~5 입력 가능)</strong></th>
                            <td>
                            	<input type="text" name="review_satisfied" value="<%=review_satisfied %>">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">제목</th>
                            <td>
                                <input type="text" name="review_title" class="review_title" placeholder="제목 입력"  value="<%=review_title %>">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">내용</th>
                            <td class="wirte_editor">
                                <textarea title="내용 입력" id="editor" style="width: 100%; height:200px; min-width: 400px;" name="review_content" cols="50" rows="3">
                                <%=review_content %>
                                </textarea>
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
            <a><input type="submit" value="등록" onclick="goProductDetail()"/></a>
        </div>
    </div>
    <!-- //ly_cont -->
</div>
</form>
</body>
<script>
	function goProductDetail(){
		alert('등록되었습니다.\n전체후기 화면으로 이동하시겠습니까?');
		location.href="allReview.jsp";
	}
</script>
</html>
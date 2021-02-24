<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"
    import="jspexp.a03_database.*"
    import="project.dao_review.*"
    import="project.vo_review.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	
</style>
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/goodsReview.css">      

<script>	
	window.onload=function(){
		var uptBtn = document.querySelector("#uptBtn");
		uptBtn.onclick=function(){
			document.querySelector("[name=proc]").value="upt";
			var title=document.querySelector("[name=review_title]");
			var content=document.querySelector("[name=review_content]");
			var satisfied=document.querySelector("[name=review_satisfied]");
			if(title.value==""){
				alert('제목을 입력하세요.');
				return false;
			}else if(content.value==""){
				alert('내용을 입력하세요.');
				return false;
			}else if(satisfied.value<1||satisfied.value>5){
				alert('1~5의 범위로 입력하세요.');
				return false;
			}
			document.querySelector("form").submit();

		}
	}
</script>	
</head>
<%
String proc = request.getParameter("proc");
String review_title = request.getParameter("review_title");
String review_content = request.getParameter("review_content");
String review_satisfied = request.getParameter("review_satisfied"); 
String review_id=request.getParameter("review_id");

if(review_id==null||review_id.equals("")) review_id="0";
DAO_review dao = new DAO_review();
if(proc!=null){
//String customer_id, int review_id, String review_title, String review_content, 
//int review_satisfied,String review_img_src, String review_written_date_s,
//int thumbs_up, int product_id, String product_name 
	if(proc.equals("upt")){
		Review upt = new Review("",Integer.parseInt(review_id),review_title,review_content,
				Integer.parseInt(review_satisfied),"","",0,0,"");
		dao.updateReview(upt);
	}
}
log("#평점"+review_satisfied);
Review review = dao.getReview(new Integer(review_id));
%>
<script>
	var proc="<%=proc%>";
	if(proc=="upt"){
		if(confirm("수정완료\n전체후기 페이지로 이동합니다.")){
			location.href="allReview.jsp";
		}
	}
</script>
<body>
    <h3>리뷰[<%=request.getParameter("review_id") %>]</h3> 
    <form method="post">
    	<input type="hidden" name="proc" value=""/>
    <table>
    <%if(review!=null){ %>
    	<tr><td colspan="2">
    		<a><image src="<%=path%>/<%=review.getReview_img_src()%>" width="200px"></a></td></tr>
    	<tr><th>제목</th><td><input name="review_title" value="<%=review.getReview_title()%>"></td></tr>
    	<tr><th>내용</th><td>
    		<textarea class="content" name="review_content" style="width:300px; height:200px; cursor:pointer;">
    			<%=review.getReview_content()%>
    		</textarea>
    	<tr><th>평점</th><td><input name="review_satisfied" value="<%=review.getReview_satisfied() %>"></td></tr>
    <%}else{ %>
    	<tr><td colspan="2">데이터가 없습니다.</td></tr>
    <%} %>
    <tr><td colspan="2">
    	<input type="button" value="수정" id="uptBtn"/>
    	<input type="button" value="삭제" id="delBtn"/>
    </table>
    </form>
</body>
</html>
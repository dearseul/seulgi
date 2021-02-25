<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project.vo_review.*"
    import="project.dao_review.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/cssAll.css">  
<style>
	.board_write_table {
    width: 100%;
    margin: 0 0 20px 0;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
    border-top: 1px solid #999999;
	}
	table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
    border-color: grey;
	}
	.board_write_table th {
    padding: 13px 0 7px 25px;
    font-weight: bold;
    border-bottom: 1px solid #dbdbdb;
    background: #fbfbfb;
    text-align: left;
    vertical-align: top;
	}
	.board_write_table td {
    height: 32px;
    margin: 0;
    padding: 7px 0 7px 15px;
    border-bottom: 1px solid #dbdbdb;
    background: #ffffff;
	}
	.btn_center_box button {
    /* margin: 0 2px 0 3px; */
	}
	.btn_before {
	    display: inline-block;
	    width: 100px;
	    height: 42px;
	    padding: 0 5px 0 5px;
	    color: #3e3d3c;
	    font-size: 14px;
	    border: 1px solid #cccccc;
	    text-align: center;
	    cursor: pointer;
	}
	.btn_write_ok {
    display: inline-block;
    min-width: 90px;
    height: 42px;
    padding: 0 10px 0 10px;
    color: #ffffff;
    font-size: 14px;
    border: 1px solid #323437;
    background: #323437;
    text-align: center;
    cursor: pointer;
}
</style>
<script>
	
</script>
</head>
<%--
	private String customer_id;
	private int question_id;
	private String question_kind;
	private String question_writer;
	private String question_title;
	private String question_content;
 --%>
<%
String question_kind = request.getParameter("question_kind");
if(question_kind==null) question_kind="";
String question_writer = request.getParameter("question_writer");
if(question_writer==null) question_writer="";
String question_title = request.getParameter("question_title");
if(question_title==null) question_title="";
String question_content = request.getParameter("question_content");
if(question_content==null) question_content="";
log("#분류:"+question_kind);
log("#작성자:"+question_writer);
log("#제목:"+question_title);
log("#내용:"+question_content);
String id = (String)session.getAttribute("id");
/*
String customer_id, int question_id, String question_kind, 
String question_writer,
			String question_title, String question_content
*/
if(!question_writer.equals("")){
	Question ins = new Question(id,0,question_kind,
			question_writer,question_title,question_content);
	log("입력내용 확인:"+ins.getQuestion_writer());
	DAO_question dao = new DAO_question();
	dao.insertQuestion(ins);
	
}
%>
<body class="body-board body-write pc">
<div class="content">
<div class="board_zone_sec">
	<div class="board_zone_tit">
		<h2>1:1문의</h2>
	</div>
	<div class="board_zone_cont">
		<form method="post">
			<div class="board_zone_write">
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
								<div class="category_select">
									<select class=" tune" id="category" name="question_kind" style="width: 127px;">
										<option value="회원/정보관리">회원/정보관리</option>
										<option value="주문/결제">주문/결제</option>
										<option value="배송">배송</option>
										<option value="반품/환불/교환/AS">반품/환불/교환/AS</option>
										<option value="영수증/증빙서류">영수증/증빙서류</option>
										<option value="상품/이벤트">상품/이벤트</option>
										<option value="기타">기타</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">작성자</th>
							<td>
								<input id="writerNm" type="text" class="text" name="question_writer" value="<%=question_writer %>" >
							</td>
						</tr>
						<tr>
							<th scope="row">제목
							</th><td><input type="text" name="question_title" value="<%=question_title %>" ></td>
						</tr>
						<tr>
							<th scope="row">본문</th>
							<td class="write_editor">
								<div class="form_element">
									<br>
								</div>
								<div>
								<textarea id="editor" name="question_content" cols="30" rows="10" style="width:600px;" >
								<%=question_content %>
								</textarea>
								</div>
							</td>
						</tr>
						</tbody>
					</table>
				</div>
				<!-- //board_write_box -->
			</div>
			<!-- //board_zone_write -->
			<div class="btn_center_box">
				<input type="submit" value="저장" class="btn_write_ok" onclick="save()">
			</div>

		</form>
	</div>
	<!-- //board_zone_cont -->

</div>
<!-- //board_zone_sec -->
</div>
<!-- //content -->
</body>
<script>

var form = document.querySelector("form");
function save(){
	if(form.question_writer.value==""){
		alert('작성자를 입력하세요.');
	}else if(form.question_title.value==""){
		alert('제목을 입력하세요.');
	}else if(form.question_content.value==""){
		alert('내용을 입력하세요.');
	}
}
function save(){
	
	alert('등록되었습니다.\문의 목록 화면으로 이동하시겠습니까?');
	window.parent.location.href="myQuestion.jsp";
}
</script>

</html>
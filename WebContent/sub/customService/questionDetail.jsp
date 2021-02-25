
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project.dao_review.*"
    import="project.vo_review.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script type="text/javascript"
	src="<%=path%>/a00_com/jquery-3.5.1.js"></script>
<script>	
window.onload=function(){
	var uptBtn = document.querySelector("#uptBtn");
	uptBtn.onclick=function(){
		document.querySelector("[name=proc]").value="upt";
		var title=document.querySelector("[name=question_title]");
		var content=document.querySelector("[name=question_content]");
		var id=document.querySelector("[name=customer_id]");
		var writer=document.querySelector("[name=question_writer]");
		if(title.value==""){
			alert('제목을 입력하세요.');
			return false;
		}else if(content.value==""){
			alert('내용을 입력하세요.');
			return false;
		}else if(id.value==""){
			alert('회원아이디를 입력하세요.');
			return false;
		}else if(writer.value==""){
			alert('작성자명을 입력하세요.');
			return false;
		}
		document.querySelector("form").submit();

	}
    var delBtn = document.querySelector("#delBtn");
    delBtn.onclick=function(){
  	  if(confirm("삭제하시겠습니까?")){
  		  document.querySelector("[name=proc]").value="del";
  		  document.querySelector("form").submit();
  	  }
    }
	
}
</script>	
</head>
<%
String proc = request.getParameter("proc");
String question_title = request.getParameter("question_title");
String question_content = request.getParameter("question_content");
String question_writer = request.getParameter("question_writer");
String customer_id = request.getParameter("customer_id");
String question_kind = request.getParameter("question_kind");

String question_id=request.getParameter("question_id");
if(question_id==null||question_id.equals("")) question_id="0";
DAO_question dao = new DAO_question();
if(proc!=null){
//	String customer_id, int question_id, String question_kind, 
//	String question_writer,
//	String question_title, String question_content
		if(proc.equals("upt")){
			Question upt = new Question(customer_id,new Integer(question_id),question_kind,
					question_writer,question_title,question_content);
			dao.updateQuestion(upt);
		}
		if(proc.equals("del")){
			dao.deleteQuestion(new Integer(question_id));
		}
	}
log("#작성자"+question_writer);
Question question = dao.getQuestion(new Integer(question_id));
%>
<script>
	var proc="<%=proc%>";
	if(proc=="upt"){
		if(confirm("수정완료\n문의목록 페이지로 이동합니다.")){
			location.href="myQuestion.jsp";
		}
	}
	if(proc=="del"){
		if(confirm("삭제완료\n문의목록 페이지로 이동합니다.")){
			location.href="myQuestion.jsp";
		}
	}
</script>
<body>
    <h3>문의사항[<%=request.getParameter("question_id") %>]</h3>
    <form method="post">
    	<input type="hidden" name="proc" value=""/>
    <table>
    <%if(question!=null){ %>
    	<tr><th>아이디</th><td>
    	<input name="customer_id" value="<%=question.getCustomer_id() %>"></td></tr>
    	<tr><th>작성자</th><td>
    	<input name="question_writer" value="<%=question.getQuestion_writer() %>"></td></tr> 
    	<tr><th>제목</th><td>
    	<input name="question_title" value="<%=question.getQuestion_title() %>"></td></tr>
    	<tr><th>내용</th><td>
    		<textarea class="content" name="question_content" style="width:300px; height:200px;">
    			<%=question.getQuestion_content() %>
    		</textarea>
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



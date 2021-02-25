<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project.vo_review.*"
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
#tab {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  margin: 20px 10px;
}
#tab th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #efefef;
}
#tab td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
 
</style>
<script type="text/javascript"
	src="<%=path%>/a00_com/jquery-3.5.1.js"></script>
<script>	

</script>	
</head>
<%
DAO_question dao = new DAO_question();
ArrayList<Question> qlist = dao.questionlist();
%>
<body>
<jsp:include page="/main_upper.jsp" flush="false"/>
<h2>나의 문의사항</h2>
    <table id="tab">
    <colgroup> 
    	<col style="width:15%"> 
    	<col style="width:15%">
    	<col style="width:15%"> 
    	<col style="width:60%">
    </colgroup>
	<tr>
		<th>분류</th><th>아이디</th><th>작성자</th><th>제목</th>
		<%for(Question q:qlist){ %>
		<tr onclick="detail(<%=q.getQuestion_id() %>)">
		<td><%=q.getQuestion_kind() %></td>
		<td><%=q.getCustomer_id() %></td>
		<td><%=q.getQuestion_writer() %></td>
		<td><%=q.getQuestion_title() %></td>
		</tr>
		<%} %>
    </table>
</body>
<script>
function detail(question_id){
	location.href="questionDetail.jsp?question_id="+question_id;
}	
</script>
</html>












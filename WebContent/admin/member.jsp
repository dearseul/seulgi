<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"
    import="project.dao_admin.*"
    import="project.vo_join.*"%>
<% request.setCharacterEncoding("UTF-8");
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<%-- path기준으로 모든 자원(css,img,js)를 접근하여 사용할 수 있다. --%>
<link rel="stylesheet" href="<%=path %>/css/reset.css"> 
<title>Insert title here</title>
<style>
#memberInfo{
	width:1000px;
	
}
#tab_mem, search {
	margin:25px;
	width:1000px;
}
#tab_mem th{
	background-color:#cd595a;
	color:white;
	padding-top:10px;
	padding-bottom:10px;
}
#tab_mem tr{
	text-align:center;
	background-color:white;
}


#tab_mem td{
	padding-top:10px;
	padding-bottom:10px;
}
#tab_mem tr:hover{
	background-color:#f9ebdf;
	
}

#tab_title{
	padding-left:30px;
	font-size:20px;
}
#customer_id{
	width:100px;
}
#tab_search{
	margin:25px;
	padding-left:30px;
}
</style>
</head>
<%
String customer_id = request.getParameter("id");
if(customer_id==null) customer_id="";
DAO_admin dao = new DAO_admin();
ArrayList<Customer> clist = dao.searchCustomer(customer_id);

%>
<body>
	<div id="memberInfo">
		<div id="tab_title">회원정보</div>
		<div id="search">
			<form method="post">
			<table id="tab_search">
				<tr><th>ID&nbsp;</th><td><input id="customer_id" name="id" value="<%=customer_id%>">&nbsp;</td><td><input type="submit" value="조회"></td></tr>
			</table>
			</form>
		</div>
		<table id="tab_mem">
			<tr><th>아이디</th><th>이름</th><th>이메일</th><th>가입일자</th><th>상세/수정</th></tr>
			<%for(Customer c:clist){ %>
			<tr><td><%=c.getCustomer_id() %></td><td><%=c.getName() %></td><td><%=c.getEmail() %></td><td><%=c.getReg_date() %></td>
			<td><input type="button" value="상세" onclick="detail('<%=c.getCustomer_id()%>')"><input type="button" value="수정" onclick="location.href='member_modify.jsp'"></td></tr>
			<%} %>
		</table>
	</div>
<script type="text/javascript">
function detail(customer_id){
	location.href="member_detail.jsp?customer_id="+customer_id;
}
</script>
</body>
</html>







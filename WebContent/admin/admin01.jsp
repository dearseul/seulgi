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
<%-- path기준으로 모든 자원(css,img,js)를 접근하여 사용할 수 있다. --%>
<link rel="stylesheet" href="../css/reset.css"> 
<title>Insert title here</title>
<style>
#content{
	width:1050px;
	 margin: 0 auto; /* 가운데 정렬 */
}
#header{
	width:1050px;
	display:block;
}
#id_logout{
	padding:50px;
	float:right;
}
#id_text{
	display:inline-block;
	padding:20px;
}
#logout{
	text-decoration:underline;
	display:inline-block;
}
#menubar{
	clear:both;
	width:1050px;
	background-color:#777777;
	
}
#menubar_table{
	width:1050px;
	height:50px;
	text-align:center;
}
#menubar_table td{
	padding:20px;
	width:200px;
}
#menubar_tabe td a {
	color:white;
}
#menubar_table td:hover{
	color:#a3a7a6;
}
#main{
	width:1050px;
	margin-top:50px;
}
</style>
<link type ="text/css" rel="stylesheet" href="../css/main_upper.css">  
</head>
<body>
<%-- <jsp:include page="../../main_upper.jsp" flush="false"/>  --%>
<% String pageChange;%><!-- 각 jsp include페이지에 넘겨줄값 -->
	<div id="content">
	<div id="header">
		<div id="id_logout">
			<jsp:useBean id="m" class="project.vo_join.Customer" scope="session"></jsp:useBean>
			<div id="id_text"> ${m.customer_id}</div>
			<div id="logout" onclick="logout()">로그아웃</div>
		</div>
		<!-- id_logout -->
		<div id="menubar">
			<table id="menubar_table">
				<tr><td><a href="?pageChange=announce.jsp">공지사항</a></td><td><a href="?pageChange=member.jsp">회원관리</a></td><td><a href="?pageChange=product.jsp">상품관리</a></td><td><a href="?pageChange=order.jsp">주문관리</a></td><td><a href="?pageChange=qanda.jsp">문의게시판</a></td></tr>
									<!-- 클릭 시 get방식으로 주소를 넘겨준다. -->
			</table>
		</div>
	</div>
	<!-- header -->
	<div id="main">
		<%
			String select = request.getParameter("pageChange");
			if(select==null){  // 넘어온 값이 없을 때는 공지사항화면이 디폴트 
				select="announce.jsp";
			}
		%>
		<jsp:include page="<%=select %>" flush="false"></jsp:include> <!--  클릭 시 넘어온 주소에 따라 화면 바뀜 -->
	</div>
	<!-- main -->
	</div>
	<!-- content -->
</body>
<script>
function logout(){
	<%session.invalidate();%>
	alert('로그아웃\n로그인페이지로 이동');
	location.href="../sub/join/login.jsp";
}

</script>
</html>
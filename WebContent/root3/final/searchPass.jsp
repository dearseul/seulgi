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
<link rel="stylesheet" href="<%=path %>/a01_sign/reset.css"> 
<title>Insert title here</title>
<style>
html, body
{
    height: 100%;
}

body
{
    display: table;
    margin: 0 auto;
}

.main
{
    height: 200px;
    width: 200px;
    background-color: blue;     
}
#searchbox
{
    height: 100%;
    display: center;
    text-align:center;
    vertical-align: middle;
    margin:0 auto;
}
#search_text{
	text-align:center;
	font-size:20px; 
	margin-bottom:40px;
}

#input_name, #input_email, #input_id{
	width:250px; 
	height:50px;
	color:gray;
}


#input_searchPass{
	margin-top:20px;
	margin-bottom:10px;
	width:258px; 
	height:50px; 
	color: white; 
	background-color:#334858; 
	border-color:#334858"
}
#name_text, #email_text, #id_text{
margin-bottom:2px;
margin-top:10px;
font-size:14px;
}
</style>
<link type ="text/css" rel="stylesheet" href="../css/main_upper.css">  
</head>
<body>
<jsp:include page="../final/main_upper.jsp" flush="false"/>
	<div id="searchbox">
		<div id="search_text">비밀번호찾기</div>
		<form>
			<div id="name_text">이름</div>
			<input id="input_name" type="text" name="name" value="고객님의 이름을 입력해주세요" onfocus="this.value=''" ><br>
			<div id="id_text">아이디</div>
			<input id="input_id" type="text" name="id" value="아이디를 입력해주세요" onfocus="this.value=''" ><br>
			<div id="email_text">이메일</div>
			<input id="input_email" type="text" name="email" value="가입 시 등록하신 이메일을 입력해주세요" onfocus="this.value=''; "><br>
			<input id="input_searchPass" type="button" value="비밀번호찾기" onclick="searchPass()" >
		</form>
	</div>
	<!-- searchbox -->
</body>
</html>
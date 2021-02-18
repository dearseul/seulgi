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
#memberInfo{
	width:1000px;
	
}
#tab_mem {
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

</style>
</head>
<body>
	<div id="memberInfo">
		<table id="tab_mem">
			<div id="tab_title">회원정보</div>
			<tr><th>회원번호</th><th>아이디</th><th>이름</th><th>이메일</th><th>가입일자</th><th>상세/수정</th></tr>
			<tr><td>3333</td><td>hong1</td><td>홍길동</td><td>hong1@gmail.com</td><td>2019/02/03</td><td><input type="button" value="상세" onclick="location.href='member_detail.jsp'"><input type="button" value="수정" onclick="location.href='member_modify.jsp'"></td></tr>
			<tr><td>3332</td><td>hong2</td><td>홍길동</td><td>hong2@gmail.com</td><td>2019/02/03</td><td><input type="button" value="상세" onclick="location.href='member_detail.jsp'"><input type="button" value="수정" onclick="location.href='member_modify.jsp'"></td></tr>
			<tr><td>3331</td><td>hong3</td><td>홍길동</td><td>hong3@gmail.com</td><td>2019/02/03</td><td><input type="button" value="상세" onclick="location.href='member_detail.jsp'"><input type="button" value="수정" onclick="location.href='member_modify.jsp'"></td></tr>
			<tr><td>3330</td><td>hong4</td><td>홍길동</td><td>hong4@gmail.com</td><td>2019/02/03</td><td><input type="button" value="상세" onclick="location.href='member_detail.jsp'"><input type="button" value="수정" onclick="location.href='member_modify.jsp'"></td></tr>
			<tr><td>3329</td><td>hong5</td><td>홍길동</td><td>hong5@gmail.com</td><td>2019/02/03</td><td><input type="button" value="상세" onclick="location.href='member_detail.jsp'"><input type="button" value="수정" onclick="location.href='member_modify.jsp'"></td></tr>
		</table>
	</div>
</body>
</html>







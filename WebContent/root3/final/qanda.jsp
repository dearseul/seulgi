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
#qandaInfo{
	width:1000px;
	
}
#tab_qanda {
	margin:25px;
	width:1000px;
}
#tab_qanda th{
	background-color:#cd595a;
	color:white;
	padding-top:10px;
	padding-bottom:10px;
}
#tab_qanda tr{
	text-align:center;
	background-color:white;
}


#tab_qanda td{
	padding-top:10px;
	padding-bottom:10px;
}
#tab_qanda tr:hover{
	background-color:#f9ebdf;
	
}

#tab_title{
	padding-left:30px;
	font-size:20px;
}
#reg_qanda{
	width:1000px;
	text-align:right;
}
#reg_button{
	width:70px;
	height:30px;
	font-size:16px;
}
</style>
</head>
<body>
	<div id="qandaInfo">
		<table id="tab_qanda">
			<div id="tab_title">문의게시판</div>
			<div id="reg_qanda"><input id="reg_button" type="button" value="글쓰기" onclick="location.href='qanda_write.jsp'"></div>
			<tr><th>문의ID</th><th>분류</th><th>제목</th><th>작성자ID</th><th>작성일자</th><th>상태</th><th>상세/답글</th></tr>
			<tr><td>1234</td><td>@@</td><td>@@@</td><td>hong</td><td>2021/02/03</td><td>미답변</td><td><input type="button" value="상세" onclick="location.href='qanda_detail.jsp'"><input type="button" value="답글" onclick="location.href='qanda_reply.jsp'"></td></tr>
			<tr><td>1234</td><td>@@</td><td>@@@</td><td>hong</td><td>2021/02/03</td><td>미답변</td><td><input type="button" value="상세" onclick="location.href='qanda_detail.jsp'"><input type="button" value="답글" onclick="location.href='qanda_reply.jsp'"></td></tr>
			<tr><td>1234</td><td>@@</td><td>@@@</td><td>hong</td><td>2021/02/03</td><td>미답변</td><td><input type="button" value="상세" onclick="location.href='qanda_detail.jsp'"><input type="button" value="답글" onclick="location.href='qanda_reply.jsp'"></td></tr>
			<tr><td>1234</td><td>@@</td><td>@@@</td><td>hong</td><td>2021/02/03</td><td>답변완료</td><td><input type="button" value="상세" onclick="location.href='qanda_detail.jsp'"><input type="button" value="답글" onclick="location.href='qanda_reply.jsp'"></td></tr>
			<tr><td>1234</td><td>@@</td><td>@@@</td><td>hong</td><td>2021/02/03</td><td>답변완료</td><td><input type="button" value="상세" onclick="location.href='qanda_detail.jsp'"><input type="button" value="답글" onclick="location.href='qanda_reply.jsp'"></td></tr>
		</table>
	</div>
</body>
</html>







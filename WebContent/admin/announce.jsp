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
<title>관리자 페이지</title>
<%-- path기준으로 모든 자원(css,img,js)를 접근하여 사용할 수 있다. --%>
<link rel="stylesheet" href="<%=path %>/css/reset.css"> 
<style>
#announceInfo{
	width:1000px;
	
}
#tab_ann {
	margin:25px;
	width:1000px;
}
#tab_ann th{
	background-color:#cd595a;
	color:white;
	padding-top:10px;
	padding-bottom:10px;
}
#tab_ann tr{
	text-align:center;
	background-color:white;
}


#tab_ann td{
	padding-top:10px;
	padding-bottom:10px;
}
#tab_ann tr:hover{
	background-color:#f9ebdf;
	
}

#tab_title{
	padding-left:30px;
	font-size:20px;
}
#reg_ann{
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
	<div id="announceInfo">
		<table id="tab_ann">
			<div id="tab_title">공지사항</div>
			<div id="reg_ann"><input id="reg_button" type="button" value="글쓰기" onclick="location.href='announce_write.jsp'"></div>
			<tr><th>번호</th><th>제목</th><th>작성일자</th><th>작성자</th><th>조회수</th><th>수정</th></tr>
			<tr><td>10</td><td>상품공지</td><td>2019/02/03</td><td>관리자</td><td>446</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>9</td><td>상품입고공지</td><td>2019/02/03</td><td>관리자</td><td>234</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>8</td><td>전체공지</td><td>2019/02/03</td><td>관리자</td><td>222</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>7</td><td>배송공지</td><td>2019/02/03</td><td>관리자</td><td>542</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>6</td><td>전체공지</td><td>2019/02/03</td><td>관리자</td><td>123</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>5</td><td>상품공지</td><td>2019/02/03</td><td>관리자</td><td>155</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>4</td><td>상품공지</td><td>2019/02/03</td><td>관리자</td><td>122</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>3</td><td>전체공지</td><td>2019/02/03</td><td>관리자</td><td>62</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>2</td><td>배송지연공지</td><td>2019/02/03</td><td>관리자</td><td>64</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
			<tr><td>1</td><td>배송지연공지</td><td>2019/02/03</td><td>관리자</td><td>73</td><td><input type="button" value="수정" onclick="location.href='announce_modify.jsp'"></td></tr>
		</table>
	</div>
</body>
</html>







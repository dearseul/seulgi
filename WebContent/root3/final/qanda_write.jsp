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
#content{
	width:1050px;
	margin: 0 auto;
}
#write{
	padding:50px;
}
#write_tab{
	width:800px;
	margin:0 auto;
}
#write_tab th{
	width:100px;
	background-color:#f9ebdf;
	vertical-align:middle;
	height:50px;
	border:1px solid black;	
}
#write_tab td{
	vertical-align:middle;

	width:300px;
	
}

#input_content{
	width:700px;
	height:400px;
}

#input_title,#input_file{
	width:700px;
	height:50px;
}
#input_id, #input_qid,#input_qcat,#input_qdate{
	width:295px;
	height:50px;
}
#qanda_text{
	padding-left:80px;
	padding-bottom:20px;
}
#submit{
	width:50px;
	height:30px;
}
#button{
	text-align:center;
}

</style>

</head>
<body>
	<div id="content">
		<div id="write">
			<div id="qanda_text">문의게시판</div>
			<form>
				<table id="write_tab">
					<tr><th>문의ID</th><td><input id="input_id" type="text" name="qid"></td>
					    <th>분류</th><td><input id="input_qcat" type="text" name="qcat"></td></tr>
					<tr><th>작성자ID</th><td><input id="input_id" type="text" name="id"></td>
					    <th>작성일자</th><td><input id="input_qdate" type="text" name="qdate"></td></tr>
					<tr><th>제목</th><td  colspan="3"><input id="input_title" type="text" name="title"></td></tr>
					<tr><th>첨부파일</th><td  colspan="3"><input id="input_file" type="text" name="file"></td></tr>
					<tr><th>내용</th><td colspan="3"><input id="input_content" type="text" name="content"></td></tr>
					<tr><th id="button" colspan="5"><input id="submit" type="button" value="등록"></th></tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>
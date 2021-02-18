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
#content{
	width:1050px;
	margin: 0 auto;
}
#member_detail{
	padding:50px;
}
#mem_tab{
	width:700px;
	margin:0 auto;
}
#mem_tab th{
	background-color:#f9ebdf;
	vertical-align:middle;
	width:200px;
	height:50px;
	border:1px solid black;	
}
#mem_tab td{

	vertical-align:middle;
}

#input_mno, #input_id, #input_name, #input_email,#input_date, #input_order{
	width:500px;
	height:50px;
}


#mem_text{
	padding-left:130px;
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
		<div id="member_detail">
			<div id="mem_text">회원정보수정</div>
			<form>
				<table id="mem_tab">
					<tr><th>회원번호</th><td><input id="input_mno" type="text" name="mno"></td></tr>
					<tr><th>아이디</th><td><input id="input_id" type="text" name="id"></td></tr>
					<tr><th>이름</th><td><input id="input_name" type="text" name="name"></td></tr>
					<tr><th>이메일</th><td><input id="input_email" type="text" name="email"></td></tr>
					<tr><th>가입일자</th><td><input id="input_date" type="text" name="date"></td></tr>
					<tr><th>최근주문내역</th><td><input id="input_order" type="text" name="order"></td></tr>
					<tr><th id="button" colspan="2"><input id="submit" type="button" value="수정"></th></tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>
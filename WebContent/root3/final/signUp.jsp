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
.main
{
    height: 200px;
    width: 200px;
    background-color: blue;     
}
#signupbox
{
    position:absolute;
    top:20%; left:40%;
}
#signup_text{
	margin-top:40px;
	font-size:20px; 
	margin-bottom:40px;
}

#input_name, #input_id,#input_pass,#input_pass_confirm{
	width:250px; 
	height:50px;
	color:gray;
	margin-bottom:30px;
}
 #input_email{
 	width:120px; 
	height:50px;
	color:gray;
	margin-bottom:30px;
 }

#input_signUp{
	margin-top:50px;
	margin-bottom:10px;
	margin-left:50px;
	width:300px; 
	height:50px; 
	color: white; 
	background-color:#334858; 
	border-color:#334858";
}
#name_text, #email_text, #id_text,#pass_text,#terms_text{
	margin-bottom:2px;
	margin-top:10px;
	font-size:14px;
}

#terms{
	padding:5px;
	border:1px solid gray;
	font-size:12px;
	width:300px;
}
#tab_terms{
	
}
#check, #check_all{
	margin_bottom:20px;
}
#select_email{
	width:120px;
	height:50px;
}
#strong{
	display:inline;
	color:red;
}

#check_id{	
	width:120px; 
	height:50px;
	color:white;
	background-color:#334858; 
	border-color:#334858";
	margin-bottom:30px;
	margin-left:20px;
}

#check, #check_all{
	width:20px;
	height:20px;
	margin-right:10px;
}
</style>
<link type ="text/css" rel="stylesheet" href="../css/main_upper.css"> 
</head>
<body>
<jsp:include page="../final/main_upper.jsp" flush="false"/>
	<div id="signupbox">
		<div id="signup_text">회원가입</div>
		<form>
			<div id="name_text">이름</div>
			<input id="input_name" type="text" name="name" value="이름을 입력해주세요" onfocus="this.value=''" ><br>

			<div id="id_text">아이디</div>
			<input id="input_id" type="text" name="id" value="아이디를 입력해주세요" onfocus="this.value=''" >
			<input id="check_id" type="button" value="중복확인"><br>
		
			<div id="pass_text">비밀번호</div>
			<input id="input_pass" type="text" name="pass" value="비밀번호는 8자 이상 입력해주세요" onfocus="this.value='' type='password';" ><br>
			<div id="pass_text">비밀번호확인</div>
			<input id="input_pass_confirm" type="text" name="pass_confirm" value="비밀번호 확인" onfocus="this.value='' type='password';" ><br>
			<div id="email_text">이메일</div>
			<input id="input_email" type="text" name="email1" value="이메일을 입력해주세요" onfocus="this.value=''; ">
				@
			<input id="input_email" name="email2" type="text">
			<select name ="select_email" id="select_email" onchange="setEmail()">
				<option value="">선택하세요</option>
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="daum.net">daum.net</option>
				<option value="1">직접입력</option>
			</select>
			<br>
			<div id="terms_text">약관 동의</div>
			<div id="terms">
				<input id="check_all" type="checkbox" value="all">전체동의<br>
				<hr>
				<input id="check" type="checkbox" value="all">만 14세 이상입니다.<p id="strong">(필수)</p> <br>
				<input id="check" type="checkbox" value="all">이용약관 <p id="strong">(필수)</p> <br>
				<input id="check" type="checkbox" value="all">개인정보처리방침 <p id="strong">(필수)</p>  <br>
				<input id="check" type="checkbox" value="all">이벤트, 프로모션 알림 메일 및 SMS 수신 (선택)<br>
			</div>
			<input id="input_signUp" type="button" value="회원가입 완료" onclick="signUp()" >
		</form>
	</div>
	<!-- signupbox -->
</body>
<script>
function setEmail(emailValue){
	var select = document.querySelector("[name=select_email]");
	var input = document.querySelector("[name=email2]");
	if(select.value=='1'){
		input.readOnly = false;
        input.value = '';
        input.focus();
	}else{
		input.readOnly = true;
        input.value = select.value;
	}
	
}
</script>
</html>
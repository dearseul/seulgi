<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"
    import="jspexp.a03_database.*"
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
	th{color:grey;}
</style>
<script type="text/javascript"
	src="<%=path%>/a00_com/jquery-3.5.1.js"></script>
<script>	
/*

*/
//
</script>	
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/cssAll.css">   
</head>
<%
String customer_id=request.getParameter("customer_id");
%>
<body>
	<h1>아이디 입력</h1>
	<form method="post">
		<table>
			<tr><th>아이디 입력하기</th><td><input type="text" name="customer_id"/></td></tr>
			<tr><td colspan="2"><input type="button" value="입력완료" onclick="confirm()"/></td></tr>
		</table>
	</form>
</body>
<script>
	var customer_id="<%=customer_id%>";
	function confirm(){
		
	}
</script>
</html>
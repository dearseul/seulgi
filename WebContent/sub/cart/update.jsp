<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project.dao_payment_page.Dao_payment_page"
    import="project.vo_payment_page.paymentPro"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
   Dao_payment_page paydao = new Dao_payment_page();
   log("###update");
   String [] pno = request.getParameterValues("pno"); 
   log("###update : "+(pno==null));
   
   if(pno!=null){
	   log("###update"+(pno.length));
	   int [] pnoS = new int[pno.length];
	   for(int i = 0; i<pno.length; i++){
		   pnoS[i]=Integer.parseInt(pno[i]);
		   log("###"+pnoS[i]);
		   paydao.updateStep(pnoS[i]);
	   }
   }
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=path%>/a00_com/a00_com.css">
<script type="text/javascript">
	alert("결제가 완료되었습니다.\n마이페이지로 이동합니다.");
	location.href="../mypage/mypage.jsp";

</script>
</html>
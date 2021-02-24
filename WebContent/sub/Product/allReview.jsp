<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project.vo_review.*"
    import="project.dao_review.*"
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
<link type ="text/css" rel="stylesheet" href="<%=path %>/css/cssAll.css">    
<style>
	li{float:left};
</style>
<script type="text/javascript"
	src="<%=path%>/a00_com/jquery-3.5.1.js"></script>
<script>	
</script>	
</head>
<%
DAO_review dao = new DAO_review();
ArrayList<Review> rlist = dao.reviewlist();
%>
<body>
<div class="sub_content">
                <!-- //side_cont -->
<div class="content">
<div class="board_zone_sec">
	<div class="board_zone_tit">
		<h2>상품후기</h2>
	</div>

	<div class="board_zone_cont">
		<div class="board_zone_list" align="center">
			<table class="board_list_table" style="width:100%">
				<tbody>
				</tbody>
			</table>
		</div>
		<!-- //board_zone_list -->
	</div>
	<!-- //board_zone_cont -->

	<div class="board_zone_cont">
		<div class="board_zone_list">
			<div class="board_list_gallery">
				<ul>
					<%for(Review r:rlist){ %>
						<li style="width:25%">
						<div class="gallery_cont">
							<div class="board_img">
								<a href="ProductDetail.jsp">
									<img src="<%=path%>/<%=r.getReview_img_src() %>" width="160" height="145" class="js_image_load">
								</a>
							</div>
							<div class="gallery_info_cont">
								<div class="rating_star_box">
									<span class="rating_star">
										<span style="width:100%;">평점 <%=r.getReview_satisfied() %></span>
									</span>
<!-- 								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button style="text-align:center; color:red;" onclick="dele()">삭제하기</button> -->
								</div>

								<div class="board_tit">
									<strong onclick="detail(<%=r.getReview_id() %>)"><%=r.getReview_title() %></strong>
								</div>

								<div class="board_name_day">
									<span class="board_day"><span><%=r.getReview_written_date_s() %></span></span>
								</div>
							</div>
							<!-- //gallery_info_cont -->
						</div>
						<!-- //gallery_cont -->						
						</li>	
					<%} %>
				</ul>
			</div>
			<!-- //board_list_gallery -->
		</div>
		<!-- //board_zone_list -->
	</div>
	<!-- //board_zone_cont -->

</div>
<!-- //board_zone_sec -->
</div>
<!-- //content -->
</div>
</body>
<script>
	function detail(review_id){
		location.href="reviewDetail.jsp?review_id="+review_id;
	}
</script>
</html>
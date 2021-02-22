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
				<colgroup>
					<col style="width:60px">
					<col>
					<col style="width:100px">
					<col style="width:80px">
					<col style="width:60px">
				</colgroup>
				<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>날짜</th>
					<th>작성자</th>
					<th>조회</th>
				</tr>
				</thead>
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
									<img src="<%=path%>/images/detail_img1.jpg" width="160" height="145" class="js_image_load">
								</a>
							</div>
							<div class="gallery_info_cont">
								<div class="rating_star_box">
									<span class="rating_star">
										<span style="width:100%;"><%=r.getRe_grade() %></span>
									</span>
								</div>

								<div class="board_tit">
									<a href="javascript:gd_btn_view('goodsreview',1527 , 'y')">
										<strong><%=r.getRe_title() %></strong>
									</a>
								</div>

								<div class="board_name_day">
									<span class="board_name">네이버페이 구매자</span>
									<span class="board_day"><span><%=r.getRe_date() %></span></span>
								</div>
							</div>
							<!-- //gallery_info_cont -->
						</div>
						<!-- //gallery_cont -->						
					
					<%} %>
<%-- 					<li style="width:25%">
						<div class="gallery_cont">
							<div class="board_img">
								<a href="javascript:gd_btn_view('goodsreview',1527 , 'y')">
									<img src="<%=path%>/images/detail_img1.jpg" width="160" height="145" class="js_image_load">
								</a>
							</div>
							<div class="gallery_info_cont">
								<div class="rating_star_box">
									<span class="rating_star">
										<span style="width:100%;">#평점#</span>
									</span>
								</div>

								<div class="board_tit">
									<a href="javascript:gd_btn_view('goodsreview',1527 , 'y')">
										<strong>#제목#</strong>
									</a>
								</div>

								<div class="board_name_day">
									<span class="board_name">네이버페이 구매자</span>
									<span class="board_day"><span>#날짜#</span></span>
								</div>
							</div>
						</div>
					</li> --%>
				</ul>
			</div>
			<!-- //board_list_gallery -->
		</div>
		<!-- //board_zone_list -->
		<div class="btn_right_box">
			<button type="button" class="btn_write" onclick="javascript:gd_btn_write('goodsreview')"><strong>글쓰기</strong></button>
		</div>
	</div>
	<!-- //board_zone_cont -->

</div>
<!-- //board_zone_sec -->


<div id="layerDim" class="dn">&nbsp;</div>
</div>
<!-- //content -->
</div>
</body>
</html>
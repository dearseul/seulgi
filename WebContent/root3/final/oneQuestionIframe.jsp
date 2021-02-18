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
<link type ="text/css" rel="stylesheet" href="../css/cssAll.css">  
<style>
	.board_write_table {
    width: 100%;
    margin: 0 0 20px 0;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
    border-top: 1px solid #999999;
	}
	table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
    border-color: grey;
	}
	.board_write_table th {
    padding: 13px 0 7px 25px;
    font-weight: bold;
    border-bottom: 1px solid #dbdbdb;
    background: #fbfbfb;
    text-align: left;
    vertical-align: top;
	}
	.board_write_table td {
    height: 32px;
    margin: 0;
    padding: 7px 0 7px 15px;
    border-bottom: 1px solid #dbdbdb;
    background: #ffffff;
	}
	.btn_center_box button {
    /* margin: 0 2px 0 3px; */
	}
	.btn_before {
	    display: inline-block;
	    width: 100px;
	    height: 42px;
	    padding: 0 5px 0 5px;
	    color: #3e3d3c;
	    font-size: 14px;
	    border: 1px solid #cccccc;
	    text-align: center;
	    cursor: pointer;
	}
	.btn_write_ok {
    display: inline-block;
    min-width: 90px;
    height: 42px;
    padding: 0 10px 0 10px;
    color: #ffffff;
    font-size: 14px;
    border: 1px solid #323437;
    background: #323437;
    text-align: center;
    cursor: pointer;
}
</style>
</head>

<body class="body-board body-write pc">
<div class="content">
<div class="board_zone_sec">
	<div class="board_zone_tit">
		<h2>1:1문의</h2>
	</div>
	<div class="board_zone_cont">
		<form name="frmWrite" id="frmWrite" method="post">
			<input type="hidden" name="bdId" value="qa">
			<input type="hidden" name="sno" value="">
			<input type="hidden" name="mode" value="write">
			<!--<input type="hidden" name="chkSpamKey" id="chkSpamKey">-->
			<input type="hidden" name="returnUrl" value="bdId=qa&amp;noheader=y&amp;memNo=">

			<div class="board_zone_write">
				<div class="board_write_box">
					<table class="board_write_table">
						<colgroup>
							<col style="width:15%">
							<col style="width:85%">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">말머리</th>
							<td>
								<div class="category_select">
									<select class=" tune" id="category" name="category" style="width: 127px;">
										<option value="회원/정보관리">회원/정보관리</option>
										<option value="주문/결제">주문/결제</option>
										<option value="배송">배송</option>
										<option value="반품/환불/교환/AS">반품/환불/교환/AS</option>
										<option value="영수증/증빙서류">영수증/증빙서류</option>
										<option value="상품/이벤트">상품/이벤트</option>
										<option value="기타">기타</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">작성자</th>
							<td>
								<input id="writerNm" type="text" class="text" name="writerNm" value="" >
							</td>
						</tr>
						<tr>
							<th scope="row">비밀번호</th>
							<td><input type="password" class="text" name="writerPw" ></td>
						</tr>
						<tr>
							<th scope="row">제목
							</th><td><input type="text" name="subject" value="" ></td>
						</tr>
						<tr>
							<th scope="row">본문</th>
							<td class="write_editor">
								<div class="form_element">
									<em>해당글은 비밀글로만 작성이 됩니다.</em>
									<br>
								</div>
								<div>
								<textarea id="editor" name="contents" cols="30" rows="10" style="width:600px;" ></textarea>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">첨부파일</th>
							<td id="uploadBox">


								<div class="file_upload_sec">
									<label for="attach1">
										<input type="text" class="file_text" title="파일 첨부하기" readonly="readonly">
									</label>
									<div class="btn_upload_box">
										<button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
										<input type="file" id="attach1" name="upfiles[]" class="file" title="찾아보기">
										<span class="btn_gray_list"><button type="button" id="addUploadBtn" class="btn_gray_big"><span>+ 추가</span></button></span>
									</div>
								</div>

							</td>
						</tr>
						</tbody>
					</table>
				</div>
				<!-- //board_write_box -->
			</div>
			<!-- //board_zone_write -->
			<div class="btn_center_box">
				<button type="button" class="btn_before" onclick="javascript:history.back()"><strong>이전</strong></button>
				<button type="submit" class="btn_write_ok" onclick="save()"><strong>저장</strong></button>
			</div>

		</form>
	</div>
	<!-- //board_zone_cont -->

</div>
<!-- //board_zone_sec -->
</div>
<!-- //content -->
</body>
<script>

var form = document.querySelector("#frmWrite");
function save(){
	if(form.writerNm.value==""){
		alert('작성자를 입력하세요.');
	}else if(form.writerPw.value==""){
		alert('비밀번호를 입력하세요.');
	}else if(form.subject.value==""){
		alert('제목을 입력하세요.');
	}else if(form.contents.value==""){
		alert('내용을 입력하세요.');
	}else {
		alert('문의사항이 저장되었습니다.\n마이페이지로 이동하시겠습니까?');
		window.parent.location.href = "mypage.jsp";
	}
}
</script>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/write.css" />
<jsp:include page="header.jsp" />
</head>
<%
	if((int)request.getAttribute("ok")==0){
		%> 
	<script type="text/javascript">
        alert('학생은 글 작성 권한이 없습니다.');
        location.href='<%=request.getContextPath()%>/AviewProc.do';
    </script>
<%} %>
<body>
	<div class="col-lg-12 bg-box">
		<div class="col-lg-2"></div>
		<div class="col-lg-8 bg-box3">
			<div class="col-lg-2 leftbarBox">
				<div class="container col-lg-3">
						<h2 id="site_header" class="site-font-color">ACADEMY</h2>
						<form name="input" action="getfeedback.html" method="get">
							<img src="projectImages/vvv.png" alt="Y아카데미" width="100px"
								class="logo">
						</form>
					</div>
			</div>
			<div class="col-lg-7">
				<div class="write-box">
				
					<form method="post" action="<%=request.getContextPath()%>/AwriteProc.do">
						<input type="hidden" value="<%=session.getAttribute("userId")%>" name="userId">
						<input type="text" class="orange_text" placeholder="제목" name="title"> <br>
						<textarea class="orange_area" placeholder="내용" name="content"></textarea>
						<input type="submit" value="저장" class="orange_btn"> <input
						type="reset" value="취소" class="gray_btn">
					</form>
				</div>
			</div>
			<div class="col-lg-3"></div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
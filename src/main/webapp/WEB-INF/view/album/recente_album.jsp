<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">
<link
	href="<%=request.getContextPath()%>/resources/css/recentealbum.css"
	rel="stylesheet">
<%@ include file="/WEB-INF/view/common/front_header.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/recentealbum.js"></script>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<section class="sec1">
		<%@ include file="/WEB-INF/view/common/aside.jsp"%>
		<div class="wrap">
			<div class="head-title">
				<h1 class="top-100">최신앨범</h1>
				<div class="head-title-menu">
					<h3 class="all">전체</h3>
					<h3 class="domestic" style="padding-left: 30px">국내</h3>
					<h3 class="foreign" style="padding-left: 30px">해외</h3>
				</div>
			</div>
			<ul>
				<li>
					<a href="#"> 
						<img src="<%=request.getContextPath()%>/resources/Img/album2.png"
							style="width: 200px;">
					</a>
					<div>
						<p class="alnum">NewJeans 1st EP 'New Jeans'</p>
						<p class="artist">NewJeans</p>
						<p class="release">2022.08.01</p>
					</div>
				</li>
				<li>
					<a href="#"> 
						<img src="<%=request.getContextPath()%>/resources/Img/album2.png"
							style="width: 200px;">
					</a>
					<div>
						<p class="alnum">NewJeans 1st EP 'New Jeans'</p>
						<p class="artist">NewJeans</p>
						<p class="release">2022.08.01</p>
					</div>
				</li>
				<li>
					<a href="#"> 
						<img src="<%=request.getContextPath()%>/resources/Img/album2.png"
							style="width: 200px;">
					</a>
					<div>
						<p class="alnum">NewJeans 1st EP 'New Jeans'</p>
						<p class="artist">NewJeans</p>
						<p class="release">2022.08.01</p>
					</div>
				</li>
				<li>
					<a href="#"> 
						<img src="<%=request.getContextPath()%>/resources/Img/album2.png"
							style="width: 200px;">
					</a>
					<div>
						<p class="alnum">NewJeans 1st EP 'New Jeans'</p>
						<p class="artist">NewJeans</p>
						<p class="release">2022.08.01</p>
					</div>
				</li>
				<li>
					<a href="#"> 
						<img src="<%=request.getContextPath()%>/resources/Img/album2.png"
							style="width: 200px;">
					</a>
					<div>
						<p class="alnum">NewJeans 1st EP 'New Jeans'</p>
						<p class="artist">NewJeans</p>
						<p class="release">2022.08.01</p>
					</div>
				</li>
				<li>
					<a href="#"> 
						<img src="<%=request.getContextPath()%>/resources/Img/album2.png"
							style="width: 200px;">
					</a>
					<div>
						<p class="alnum">NewJeans 1st EP 'New Jeans'</p>
						<p class="artist">NewJeans</p>
						<p class="release">2022.08.01</p>
					</div>
				</li>
			</ul>
		</div>
	</section>
</body>
</html>
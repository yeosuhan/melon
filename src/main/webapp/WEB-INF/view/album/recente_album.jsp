<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="kor">
<link
	href="<%=request.getContextPath()%>/resources/css/recentealbum.css"
	rel="stylesheet">
<%@ include file="/WEB-INF/view/common/front_header.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/recentealbum.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
			<div id="albumList">
				<ul>
					<c:forEach var="ad" items="${ad}">
						<li><a href="#"> <img
								src="<%=request.getContextPath()%>/resources/Img/song/${ad.songName}.jpg"
								style="width: 200px;">
						</a>
							<div>
								<p class="album">${ad.albumName}</p>
								<p class="artist">${ad.artistName}</p>
								<p class="release">${ad.releaseDate}</p>
							</div></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</section>
</body>
</html>
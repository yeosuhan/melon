<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">
<link href="<%=request.getContextPath()%>/resources/css/genre.css"
	rel="stylesheet">
<%@ include file="/WEB-INF/view/common/front_header.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/genre.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<section class="sec1">
		<%@ include file="/WEB-INF/view/common/aside.jsp"%>
		<div class="wrap">
			<div class="dropdown">
				<p class="main">장르 홈</p>
				<div class="dropdown-btn">
					<button class="dropbtn">
						<i class="fa-solid fa-chevron-down btn"></i>
					</button>
				</div>
				<div id="dropdown-title">
					<div class="dropdown-content" id="myDropdown">
						<a href="#">장르 홈</a> <a href="#">발라드</a> <a href="#">댄스</a> <a
							href="#">국내힙합</a> <a href="#">인디</a> <a href="#">국내 R&B</a> <a
							href="#">OST</a> <a href="#">해외</a>
					</div>
				</div>
				<div class="era-head">
					<div class="era-body">
						<p class="all">전체</p>
						<p class="_20">20's</p>
						<p class="_10">10's</p>
						<p class="_00">00's</p>
						<p class="_90">90's</p>
						<p class="_80">80's</p>
					</div>
				</div>
			</div>
			<div class="favorites">
				<!-- 즐겨찾기 -->
				<ul class="showline">
					<c:forEach var="gd" items="${gd}">
						<c:if test="${gd.genreId eq 0}">
							<li class="myballade" style="display: inline-block !important">발라드</li>
						</c:if>
					</c:forEach>
					<li class="myballade">발라드</li>
					<c:forEach var="gd" items="${gd}">
						<c:if test="${gd.genreId eq 1}">
							<li class="mydance" style="display: inline-block !important">댄스</li>
						</c:if>
					</c:forEach>
					<li class="mydance">댄스</li>
					<c:forEach var="gd" items="${gd}">
						<c:if test="${gd.genreId eq 2}">
							<li class="myhiphop" style="display: inline-block !important">국내힙합</li>
						</c:if>
					</c:forEach>
					<li class="myhiphop">국내힙합</li>
					<c:forEach var="gd" items="${gd}">
						<c:if test="${gd.genreId eq 3}">
							<li class="myindie" style="display: inline-block !important">인디</li>
						</c:if>
					</c:forEach>
					<li class="myindie">인디</li>
					<c:forEach var="gd" items="${gd}">
						<c:if test="${gd.genreId eq 4}">
							<li class="myrnb" style="display: inline-block !important">국내R&B</li>
						</c:if>
					</c:forEach>
					<li class="myrnb">국내R&B</li>
					<c:forEach var="gd" items="${gd}">
						<c:if test="${gd.genreId eq 5}">
							<li class="myost" style="display: inline-block !important">OST</li>
						</c:if>
					</c:forEach>
					<li class="myost">OST</li>
					<c:forEach var="gd" items="${gd}">
						<c:if test="${gd.genreId eq 6}">
							<li class="myforeign" style="display: inline-block !important">해외</li>
						</c:if>
					</c:forEach>
					<li class="myforeign">해외</li>
				</ul>
			</div>
			<div class="favorite-menu">
					<ul>
						<li class="ballade">발라드<c:forEach var="gd" items="${gd}"><c:choose><c:when test="${gd.genreId==0}"><i class="fa-solid fa-plus plus"
								style="display: none;"></i> <i class="fa-solid fa-check check"
								style="display: inline-block;"></i></c:when></c:choose></c:forEach></li>
						<li class="dance">댄스<c:forEach var="gd" items="${gd}"><c:choose><c:when test="${gd.genreId==1}"><i class="fa-solid fa-plus plus"
								style="display: none;"></i> <i class="fa-solid fa-check check"
								style="display: inline-block;"></i></c:when></c:choose></c:forEach></li>
						<li class="hiphop">국내힙합<c:forEach var="gd" items="${gd}"><c:choose><c:when test="${gd.genreId==2}"><i class="fa-solid fa-plus plus"
								style="display: none;"></i> <i class="fa-solid fa-check check"
								style="display: inline-block;"></i></c:when></c:choose></c:forEach></li>
						<li class="indie">인디<i class="fa-solid fa-plus plus"></i><i
							class="fa-solid fa-check check"></i></li>
						<li class="rnb">국내R&B<i class="fa-solid fa-plus plus"></i><i
							class="fa-solid fa-check check"></i></li>
						<li class="ost">OST<i class="fa-solid fa-plus plus"></i><i
							class="fa-solid fa-check check"></i></li>
						<li class="foreign">해외<i class="fa-solid fa-plus plus"></i><i
							class="fa-solid fa-check check"></i></li>
					</ul>
			</div>
			<div class="menu-toggle">
				<i class="fa-solid fa-chevron-down" id="favoritedown"></i> <i
					class="fa-solid fa-chevron-up" id="favoriteup"></i>
			</div>
			<div class="genre_tab">
				<ul>
					<li class="recentAlbum">최신앨범</li>
					<li class="recentSong">최신곡</li>
				</ul>
			</div>
			<div class="genre_list" id="List">
				<ul>
					<c:forEach var="ad" items="${ad}">
						<li><a href="#"> <img
								src="<%=request.getContextPath()%>/resources/Img/song/${ad.songName}.jpg">
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
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">
<link
	href="<%=request.getContextPath()%>/resources/css/popularchart.css"
	rel="stylesheet">
<%@ include file="/WEB-INF/view/common/front_header.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/popularchart.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<section class="sec1">
		<%@ include file="/WEB-INF/view/common/aside.jsp"%>
		<div class="wrap">
			<div>
				<h1 class="top-100">TOP 100</h1>
			</div>
			<div class="time">
				<h4 class="now"></h4>
				<i class="fa-solid fa-rotate-right retate"></i>
			</div>
			<div style="width: 1350px; padding-top: 30px">
				<button class="allplay" id="allplay">
					<i class="fa-solid fa-play" style="padding: 5px"></i>전체 재생
				</button>
			</div>
			<div class="chart-table">
				<table class="charts">
					<thead>
						<tr>
							<td><input type="checkbox"></td>
							<td></td>
							<td>순위</td>
							<td></td>
							<td>곡정보</td>
							<td>아티스트명</td>
							<td>앨범명</td>
							<td>좋아요</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="psd" items="${sd}" varStatus="loop">
							<tr>
								<td><input type="checkbox" class="song_checkbox"></td>
								<td><img
									src="<%=request.getContextPath()%>/resources/Img/song/${psd.songName}.jpg"
									style="height: 55px;"></td>
								<td>${loop.index+i+1}</td>
								<td class="changeRank">${rankChange[loop.index]}</td>
								<td class="play_song">${psd.songName}</td>
								<td>${psd.artistName}</td>
								<td>${psd.albumName}</td>
								<td>
									<p id="top_like_btn${loop.index+i}">
										<a id="top_song_like${loop.index+i}"><strong class="none">♡</strong><strong class="ilike">♥</strong></a>
									</p>
									${psd.songLike}
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
</body>
</html>
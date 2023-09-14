<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">
<link
	href="<%=request.getContextPath()%>/resources/css/popularchart.css"
	rel="stylesheet">
<%@ include file="/WEB-INF/view/common/front_header.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/popularchart.js"></script>
<body>
	<%@ include file="/WEB-INF/view/common/header.jsp"%>
	<section class="sec1">
		<%@ include file="/WEB-INF/view/common/aside.jsp"%>
		<div class="wrap">
			<div>
				<h1 class="top-100">TOP 100</h1>
			</div>
			<div>
				<h4 class="now">현재 시간</h4>
			</div>
			<div class="chart-table">
				<table class="charts">
					<thead>
						<tr>
							<td><input type="checkbox"></td>
							<td></td>
							<td>순위</td>
							<td>-</td>
							<td>곡정보</td>
							<td>아티스트명</td>
							<td>앨범명</td>
							<td>좋아요</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<td><img
								src="<%=request.getContextPath()%>/resources/Img/album2.png"
								style="height: 55px;"></td>
							<td>1</td>
							<td>-</td>
							<td>Hype boy</td>
							<td>NewJeans</td>
							<td>NewJeans'OMG'</td>
							<td>
								<p id="top_like_btn1">
									<a href="#" class="top_song_like1"><strong>♥</strong></a>
								</p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</section>
</body>
</html>
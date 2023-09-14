<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<link href="<%=request.getContextPath()%>/resources/css/recentesong.css" rel="stylesheet">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<script src="<%=request.getContextPath()%>/resources/js/recentesong.js"></script>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="head-title">
	        <h1 class="top-100">최신곡</h1>
	        <div class="head-title-menu">
		        <h3 class="domestic">국내</h3>
		        <h3 class="foreign" style="padding-left:30px">해외</h3>
	        </div>
	    </div>
	    <div style="width:1350px;padding-top:30px">
	   		<button class="allplay">
	   		<i class="fa-solid fa-play" style="padding:5px"></i>전체 재생</button>
	    </div>
	    <div class="chart-table">
				<table class="charts">
					<thead>
						<tr>
							<td><input type="checkbox"></td>
							<td></td>
							<td>NO</td>
							<td>곡명</td>
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
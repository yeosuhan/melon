<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/playlistrecente.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <!-- 여기서 만들자️ -->
        <div class="head">
	        <div class="boxhead">재생목록</div>
	        <div class="box">
	        <a href="#">현재</a>
	        </div>
	        <div class="box">
	        	<a href="#">최근</a>
	        </div>
	        <div class="box2"></div>
        </div>
        
        <div class="head2">
        	<div class="box">
        		<a href="#">최신순</a>
        	</div>
        	<div class="box">
        		<a href="#">가나다순</a>
        	</div>
        	<div class="box">
        		<a href="#">아티스트순</a>
        	</div>

        	<div class="head3">
	        	<div class="box">
	        		<p><a href="#"><i class="fa-solid fa-check"> 전체선택</i></a>
	        	</div>
	        	<div class="box">
	        		<a href="#"><i class="fa-solid fa-play"> 전체재생</i></a>
	        	</div>
	        	<div class="box">
	        		<a href="#"><i class="fa-solid fa-shuffle"> 셔플재생</i></a>
	        	</div>
        	</div>
       </div>
        
        <div class="playlistrecente_list_wrap">
			<table class="playlistrecente_list">
				<thead>
					<tr>
						<td><input type="checkbox"></td>
						<td></td>
						<td>곡명</td>
						<td>아티스트명</td>
						<td>앨범명</td>
						<td>좋아요</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td>
							<a href="#">앨범</a>
						</td>
						<td>
							<a href="#">노래제목</a>
						</td>
						<td>
							<a href="#">가수</a>
						</td>
						<td>
							<a href="#">앨범</a>
						</td>
						<td>
							<p id="playlistrecente_heart"><a href="#" class="playlistrecente_white"><strong>♥</strong></a></p>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
        <!-- 여기서 만들자️ -->
    </div>
</section>
</body>
</html>

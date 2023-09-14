<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<link href="<%=request.getContextPath()%>/resources/css/likesong.css" rel="stylesheet">
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<script src="<%=request.getContextPath()%>/resources/js/like.js"></script>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <!-- 여기서 만들자️ -->
        
        <!-- 좋아요페이지 헤드 -->
        <div class="head">
	        <div class="boxhead">좋아요</div>
	        <div class="box">
	        <a href="#">곡</a>
	        </div>
	        <div class="box">
	        	<a href="#">앨범</a>
	        </div>
	        <div class="box">
	        	<a href="#">가수</a>
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
       
        <!-- 좋아요 곡 -->
        <div class="like_list_wrap">
			<table class="like_list">
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
							<p id="like_heart"><a href="#" class="like_white"><strong>♥</strong></a></p>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<!-- 좋아요 앨범 -->
		<div class="likealbum">
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
			
		<!-- 좋아요 가수 -->

		<div class="like_artist">
            <table>
                <tbody>
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td>
                        	<div><p class="top">Artist</p></div>
                        	<div><p>test</p></div>
							<p id="artist_heart1"><a href="#" class="artist_white1"><strong>♥</strong></a></p>
                        </td>
                    </tr>
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td>
                        	<div><p class="top">Artist</p></div>
                        	<div><p>test</p></div>
                        	<p id="artist_heart2"><a href="#" class="artist_white2"><strong>♥</strong></a></p>
                        </td>
                    </tr>
                    <tr>
                        <td><img src="<%=request.getContextPath()%>/resources/Img/album.png"></td>
                        <td>
                        	<div><p class="top">Artist</p></div>
                        	<div><p>test</p></div>
                        	<p id="artist_heart3"><a href="#" class="artist_white3"><strong>♥</strong></a></p>
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

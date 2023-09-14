<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<link
	href="<%=request.getContextPath()%>/resources/css/genre.css"
	rel="stylesheet">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<script src="<%=request.getContextPath()%>/resources/js/genre.js"></script>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="dropdown">
     	  	<p>장르 홈</p>
     	  	<div class="dropdown-btn">
     	  		<button class="dropbtn"><i class="fa-solid fa-chevron-down btn"></i></button>
     	  	</div>
     	  	<div id="dropdown-title">
	     	  	<div class="dropdown-content" id="myDropdown">
		            <a href="#">장르 홈</a>
		            
		            <a href="#">발라드</a>
		            <a href="#">댄스</a>
		            <a href="#">국내힙합</a>
		            <a href="#">아이돌</a>
		            <a href="#">국내 R&B</a>
		            <a href="#">OST</a>
		            <a href="#">해외</a>
		        </div>
     	  	</div> 
     	  	<div class="era">
     	  		<p class="all">전체</p>
     	  		<p class="_20">20's</p>
     	  		<p class="_10">10's</p>
     	  		<p class="_00">00's</p>
     	  		<p class="_90">90's</p>
     	  		<p class="_80">80's</p>
     	  	</div>
   		</div>
   		<div class="favorites">
   			<!-- 즐겨찾기 -->
   			<ul class="showline">
   				<li class="myballade">발라드</li>
   				<li class="mydance">댄스</li>
   				<li class="myhiphop">국내힙합</li>
   				<li class="myindie">인디</li>
   				<li class="myrnb">국내R&B</li>
   				<li class="myost">OST</li>
   				<li class="myforeign">해외</li>
   			</ul>
   		</div>
   		<div class="favorite-menu">
	   		<div>
	   			<ul>
	   				<li class="ballade">발라드 <i class="fa-solid fa-plus plus"></i><i class="fa-solid fa-check check"></i></li>
	   				<li class="dance">댄스 <i class="fa-solid fa-plus plus"></i><i class="fa-solid fa-check check"></i></li>
	   				<li class="hiphop">국내힙합 <i class="fa-solid fa-plus plus"></i><i class="fa-solid fa-check check"></i></li>
	   				<li class="indie">인디 <i class="fa-solid fa-plus plus"></i><i class="fa-solid fa-check check"></i></li>
	   				<li class="rnb">국내R&B <i class="fa-solid fa-plus plus"></i><i class="fa-solid fa-check check"></i></li>
	   				<li class="indie">OST <i class="fa-solid fa-plus plus"></i><i class="fa-solid fa-check check"></i></li>
	   				<li class="indie">해외 <i class="fa-solid fa-plus plus"></i><i class="fa-solid fa-check check"></i></li>
	   			</ul>
   			</div>
   		</div>
   		<div class="menu-toggle">
   			<i class="fa-solid fa-chevron-down" id="favoritedown"></i>
   			<i class="fa-solid fa-chevron-up" id="favoriteup"></i>
   		</div>
   		<div class="genre_album">
   		<p>홈에 뭐넣지..?</p>
   			<ul>
				<li>
					<a href="#"> 
						<img src="<%=request.getContextPath()%>/resources/Img/album2.png"
							>
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
							>
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
							>
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
							>
					</a>
					<div>
						<p class="alnum">NewJeans 1st EP 'New Jeans'</p>
						<p class="artist">NewJeans</p>
						<p class="release">2022.08.01</p>
					</div>
				</li>
			</ul>
   		</div>
    </div>
</section>
</body>
</html>
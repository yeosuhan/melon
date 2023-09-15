<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="header">
    <div class="header_left">
        <a href="/">Melon</a>
        <form action="/search" method="get">
            <div class="header_left_read"><i class="fa-solid fa-magnifying-glass"></i></div>
            <input type="text" name="songName">
        </form>
    </div>
    <c:if test="${empty user}">
	    <div class="header_right">
	        <form action="/login" method="GET"><button>로그인</button></form>
	        <form action="/join" method="GET"><button>회원가입</button></form>
	    </div>
    </c:if>
    <c:if test="${!empty user}">
	    <div class="header_right">
			<form action="" method="GET"><button>이용권 구매</button></form>
	        <form action="/login/logout" method="GET"><button>로그아웃</button></form>
	    </div>    	
    </c:if>
    <aside class="aside">
        <div class="playsong_info">
            <img src="<%=request.getContextPath()%>/resources/Img/next_level_img.png">
            <p>Next Level</p>
            <p><span>aespa</span></p>
            <p id="like_btn"><a href="#" class="white"><strong>♥</strong></a></p>
            <p>00:00 | 04:15</p>
            <div class="playsong_oper">
                <div class="playsong_oper_wrap">
                    <a href=""><i class="fa-solid fa-play"></i></a>
                    <a href=""><i class="fa-solid fa-pause"></i></a>
                    <a href=""><i class="fa-solid fa-shuffle"></i></a>
                    <a href=""><i class="fa-solid fa-volume-off"></i></a>
                </div>
            </div>
        </div>
        <div class="playsong_info_ck">
            <input type="checkbox">
            <p>3곡</p>
            <p><a href="">삭제</a></p>
        </div>
        <div class="playsong_list"> <!-- 동적으로 생성-->
            <ul>
                <li class="playsong_list_wrap">
                    <input type="checkbox">
                    <img src="<%=request.getContextPath()%>/resources/Img/next_level_img.png">
                    <div class="playsong_list_wrap_div">
                        <p>Next Level</p>
                        <p>aespa</p>
                    </div>
                </li>
                <li class="playsong_list_wrap">
                    <input type="checkbox">
                    <img src="<%=request.getContextPath()%>/resources/Img/album2.png">
                    <div class="playsong_list_wrap_div">
                        <p>Hype ascascasc</p>
                        <p>NewJeansascascasc</p>
                    </div>
                </li>
            </ul>
        </div>
    </aside>
</header>
<script>
    $(document).ready(function (){
        $('#like_btn').on('click', function (e){
            $('.white').toggleClass('green');
        });
    })
</script>

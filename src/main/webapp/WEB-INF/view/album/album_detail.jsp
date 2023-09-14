<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<%@ include file="/WEB-INF/view/common/front_header.jsp" %>
<head>
    <link href="/resources/css/album/album_detail.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="/WEB-INF/view/common/header.jsp" %>
<section class="sec1">
    <%@ include file="/WEB-INF/view/common/aside.jsp" %>
    <div class="wrap">
        <div class="container">
            <div class="album_top">
                <div class="album_top_img">
                    <div class="album_img">
                        <img src="/resources/Img/next_level.jpg"/>
                    </div>
                </div>
                <div class="album_top_text">
                    <div class="album_top_type">[싱글]</div>
                    <div class="album_top_song_name">Next Level</div>
                    <div class="album_top_artist">aespa</div>
                    <div class="album_top_release">
                        <div class="release">발매일</div>
                        <div class="date">2021.05.07</div>
                        <div class="comment">댓글 &nbsp</div>
                        <div class="comment_count">12,113개 ></div>
                    </div>
                    <div class="album_top_genre">
                        <div class="genre">장르</div>
                        <div class="genre_name">댄스</div>
                        <div class="hart"><strong>♥ &nbsp</strong></div>
                        <div class="hart_count">5,1179</div>
                    </div>
                    <div class="album_top_agency">
                        <div class="agency">소속사</div>
                        <div class="agency_name">(주)SM엔터테인먼트</div>
                    </div>
                </div>
            </div>
            <div class="album_menu">
                <div class="album_menu_left">
                    <div class="album_left_song">
                        <div class="album_left_song_text">
                            <a href="/album">수록곡</a>
                        </div>
                    </div>
                    <div class="album_left_detail">
                        <div class="album_left_detail_text">
                            <a href="#">앨범상세</a>
                        </div>
                    </div>
                    <div class="album_left_comment">
                        <div class="album_left_comment_text">
                            <a href="/album/comment">댓글</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="album_detail_body">
                <div class="album_information_body">
                    <div class="album_detail_name_box">
                        <div class="album_name">앨범명</div>
                        <div class="album_name_value">Next Level</div>
                    </div>
                    <div class="album_detail_artist_box">
                        <div class="album_artist">아티스트</div>
                        <div class="album_artist_value">aespa</div>
                    </div>
                    <div class="album_detail_genre_box">
                        <div class="album_genre">장르</div>
                        <div class="album_genre_value">댄스</div>
                    </div>
                    <div class="album_detail_agency_box">
                        <div class="album_agency">소속사</div>
                        <div class="album_agency_value">(주)SM엔터테인먼트</div>
                    </div>
                </div>
                <div class="album_produce_text_box">
                    <span class="album_produce_text">앨범소개</span>
                </div>
                <div class="album_produce_content_box">
                    <div class="album_produce_content">앨범내용~~~~~~~~~~~~~~</div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
